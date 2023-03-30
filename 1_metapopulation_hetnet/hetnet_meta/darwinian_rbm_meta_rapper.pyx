# -*- coding: utf-8 -*-
# distutils: language = c++
# distutils: sources = darwinian_rbm_meta_rap.cpp
"""
Cython code for using function in Clang.
These functions can be called by Python.
Last update: 2018/11/18
"""

#from libc.stdlib cimport malloc
import numpy as np
cimport numpy as np

#ctypedef np.float_t DTYPE_t



DEF N = 38  #// number of neurons (200) // if Nk landscape is used, the maximal value of N is 63!
DEF P = 10  #// partition size; must be an integer that divides N
DEF T = 2   #// number of optima per block
DEF B = 1 #N/P #// number of blocks per sequence

DEF NN = 10  #// population size of a deme (number of networks)
DEF DX = 3  #// 1st dimension of spatial deme lattice
DEF DY = 3  #// 2nd dimension of spatial deme lattice
DEF DN = DX*DY  #// total deme number

DEF TYPE = 4 #// type of operator to turn input to output

DEF PN = N  #// maximal number of stored patterns (N/sqrt(2*ln(N)) * 1.1); only used for tracking learned patterns in some tests
DEF TESTSTORED = 0  #// test storedness of output (always on if TYPE >= 5)
DEF STORE = 0#(TYPE >= 5) || ((TYPE == 4) && TESTSTORED); // store learned patterns in `stored` array

DEF n_v = 38#20#10 #N
DEF n_h = 38#20#10 #N
DEF epsilon_rbm = 0.1
DEF epoch_rbm = 400
DEF T_rbm = 5




# define function from Clang header file
cdef extern from "darwinian_rbm_meta_rap.h":


    cdef struct DEME:
        float w[NN], minW, maxW, input_t[NN][N], output[NN][N], maxOutput[N], weight[NN][N][N], avgW;
        int   minP, maxP, storedQ[NN], storedP[NN], recombination;
        float storedD[NN], stored[NN][PN][N];
        float w1, w2, v1[N], v2[N];
        float weight_rbm[NN][n_h][n_v], b_rbm[NN][n_h], a_rbm[NN][n_v];
    ctypedef DEME DEME


    cppclass Darwinian_deme:
    
        #RBM
        void train_rbm(float *v, int d, int n);
        void encode_rbm(float *v, int d, int n);
        void encode_decode_rbm(float *v, float *p_h, int d, int n);
        void update_rbm(float *v_0, float *v, float *p_h_0, float *p_h, int d, int n);
        float sigmoid_rbm(float x);

        # Landscapes
        float globalBest[N];

        #unsigned long RAN4SEED;

        # block landscape
        float blockOptimaSequence[B][T][P];
        float blockOptimaFitness [B][T];
        float blockGlobalMax;

        # spatial deme neighbors
        int matrixNeighbors[DN][8];

        DEME deme[DN];


        float pearsonCorrelation(float *u, float *v);
        float pearsonFitness(float *v);
        int hammingDistanceN(float *v, float *u, int n);
        int hammingDistance(float *v, float *u);
        float relativeHammingDistance(float *v, float *u);
        float hammingFitness(float *v);
        int randomMinPosition(float *v, int n);
        int randomMaxPosition(float *v, int n);
        int firstMaxPosition(float *v, int n);
        int samePatternQ(float *u, float *v);
        void copyPattern(float *to, float *from_t);
        void copyPatternN(float *to, float *from_t);
        void copyPatternNN(float *to, float *from_t);
        void printPattern(float *v);
        const char *vectorToString(float *v, int n);
        void mutatePattern(float *v, float mut);
        void exactlyMutatePattern(float *v, float mut);
        void mutateSinglebitPattern(float *v, float mut);
        void randomPattern(float *v, float mut);
        void correlatePattern(float *v, float corr);
        void recombinePattern(float * u, float * v);
        void setWeights();
        void storePattern(float *v, int d, int i);
        void trainNetwork(float *v, int d, int n);
        void trainNetworksRandom(int n);
        void updateOutput(float *v, int d, int n, int i);
        void updateNetwork(float *v, int d, int n);
        void shuffleOutputs(int d);
        void setBlockOptimaDefault();
        float blockGlobalOptimumFitness();
        void blockGlobalOptimumSequence(float *v);
        float blockFitness(float *v);
        void setNeighborDemes(int n, int m);


        void evolution();
        void evolution_initialization(int t);
        void evolution_gen_environment(int t);
        void test_versatility(int t)       
        DEME *evolution_gen_update(int t);
        void evolution_gen_calcfitness(int t);
        float *evolution_gen_calcbestfitness(int t);
        DEME *evolution_gen_selection(int t);
        void evolution_gen_calcmutation(int t);
        void evolution_gen_replacemutation(int t);
        void return_fitness(float *w, int d);
        void return_fitness_mutate(float *w, int d);

    


cdef class PyDeme:

    cdef Darwinian_deme *cDeme

    def __cinit__(self):
        self.cDeme = new Darwinian_deme()

    def get_NN(self):
        return(NN)
    
    def py_evolution_initialization(self, t):
        self.cDeme.evolution_initialization(t)
    
    def py_evolution_gen_environment(self, t):
        self.cDeme.evolution_gen_environment(t)


    def py_test_versatility(self, t):
        self.cDeme.test_versatility(t)
        
    def py_evolution_gen_update(self, t):
        print("A")
        deme_list = self.cDeme.evolution_gen_update(t)
        #print("F")
        cdef int i
        lst3 = []
        #print("G")
        #for i in range(1):
        for d in range(DN):
            lst2 = []
            for i in range(NN):
                lst = []
                #print("Here")
                for j in range(N):
                    #print("Here2"+str(deme_list[d].output[i][j]))
                    lst.append(deme_list[d].output[i][j])
                #print("Here2"+str(deme_list[d].output[i][j]))
                lst2.append(lst)
            #print("Here2"+str(deme_list[d].output[i][j]))
            lst3.append(lst2)
        #print("I")
        #print(lst2)

        #lst.append(deme_list[0])
        #print("H")
        return lst3
    
    
        #deme_list = convert_to_python(deme_list, 1)
        #print("B")
        #return(deme_list)
    
    def py_evolution_gen_calcfitness(self, t):
        self.cDeme.evolution_gen_calcfitness(t)

    def py_evolution_gen_calcbestfitness(self, t):
        best_output = self.cDeme.evolution_gen_calcbestfitness(t)
        cdef int i
        lst=[]
        for i in range(N):
            lst.append(best_output[i])
        return lst
    
    def py_evolution_gen_selection(self, t):
        deme_list = self.cDeme.evolution_gen_selection(t)
        cdef int i
        lst3 = []
        #print("G")
        #for i in range(1):
        for d in range(DN):
            lst = []
            lst2 = []
            for j in range(N):
                #print("Here2")
                lst.append(deme_list[d].v1[j])
            lst2.append(lst)

            lst = []
            for j in range(N):
                #print("Here2")
                lst.append(deme_list[d].v2[j])
            lst2.append(lst)
        lst3.append(lst2)
        #print("I")
        #print(lst2)
        #lst.append(deme_list[0])
        return lst3

        #deme_list = convert_to_python(evolution_gen_selection(t), DN)
        #return(deme_list)
    
    def py_evolution_gen_calcmutation(self, t):
        self.cDeme.evolution_gen_calcmutation(t)
    
    def py_evolution_gen_replacemutation(self, t):
        self.cDeme.evolution_gen_replacemutation(t)
    

    cpdef py_return_fitness(self, np.ndarray[np.float32_t, ndim=1] w, d):
        cdef np.ndarray w_a = np.empty(0, dtype=np.float32)
        w_a = np.append(w_a, w)
        cdef float *w_c = <float *>w_a.data
        self.cDeme.return_fitness(w_c, d)

    

    cpdef py_return_mutate_fitness(self, np.ndarray[np.float32_t, ndim=1] w, d):
        cdef np.ndarray w_a = np.empty(0, dtype=np.float32)
        w_a = np.append(w_a, w)
        cdef float *w_c = <float *>w_a.data
        self.cDeme.return_fitness_mutate(w_c, d)
   
