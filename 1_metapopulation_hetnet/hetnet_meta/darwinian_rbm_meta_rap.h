#ifndef __CLANG_SAMPLE_H__
#define __CLANG_SAMPLE_H__


#define N       38  // number of neurons (200) // if Nk landscape is used, the maximal value of N is 63!
#define P       10   // partition size; must be an integer that divides N
#define T       2   // number of optima per block
#define B       1 //N/P // number of blocks per sequence

#define NN            10    // population size of a deme (number of networks)
#define DX 3     // 1st dimension of spatial deme lattice
#define DY 3     // 2nd dimension of spatial deme lattice
#define DN DX*DY  // total deme number

#define TYPE 4 // type of operator to turn input to output

#define PN            N   // maximal number of stored patterns (N/sqrt(2*ln(N)) * 1.1); only used for tracking learned patterns in some tests
#define TESTSTORED    0   // test storedness of output (always on if TYPE >= 5)


#define n_v 38//20 //10 //N
#define n_h 38//20 //10 //N
#define epsilon_rbm 0.1
#define epoch_rbm 400
#define T_rbm 5

typedef struct DEME {
  float w[NN], minW, maxW, input_t[NN][N], output[NN][N], maxOutput[N], weight[NN][N][N], avgW, versatility[NN*NN][N];
	int   minP, maxP, storedQ[NN], storedP[NN], recombination;
	float storedD[NN], stored[NN][PN][N];
	float w1, w2, v1[N], v2[N];
	float weight_rbm[NN][n_h][n_v], b_rbm[NN][n_h], a_rbm[NN][n_v];
} DEME;

class Darwinian_deme {
public:


// RBM
void train_rbm(float *v, int d, int n);
void encode_rbm(float *v, int d, int n);
void encode_rbm2(float *v, float *w, int d, int n);
void encode_decode_rbm(float *v, float *p_h, int d, int n);
void update_rbm(float *v_0, float *v, float *p_h_0, float *p_h, int d, int n);
float sigmoid_rbm(float x);

// Landscapes
float globalBest[N];

// Nk landscape
// const uint64_t MAXN = (1ULL << (N  )); // size of sequence space (2^N), max decimal value of a sequence is MAXN-1
// const uint64_t MAXK = (1ULL << (K+1)); // size of subsequence space (2^(K+1)), max decimal value of a subsequence of length K+1 is MAXK-1
// const uint64_t MAXB = (1ULL << (N-1)); // largest sequence with a single 1 bit (2^(N-1), represents the sequence [10000..0]; for printing purposes)
// uint64_t MAP[F] = {0};    // epistatic map, uniform for each sequence
//unsigned long RAN4SEED;

// block landscape
float blockOptimaSequence[B][T][P];
float blockOptimaFitness [B][T];
float blockGlobalMax;

// spatial deme neighbors
int matrixNeighbors[DN][8];
int STORE = (TYPE >= 5) || ((TYPE == 4) && TESTSTORED); // store learned patterns in `stored` array

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
void copyPatternN(float *to, float *from_t, int n);
void copyPatternNN(float *to, float *from_t);
void printPattern(float *v);
const char *vectorToString(float *v, int n);
void mutatePattern(float *v, float mut);
void exactlyMutatePattern(float *v, float mut);
void mutateSinglebitPattern(float *v, float mut);
void randomPattern(float *v, float mut);
void correlatePattern(float *v, float corr);
void recombinePattern(float * u, float * v);
void setWeights(void);
void storePattern(float *v, int d, int i);
void trainNetwork(float *v, int d, int n);
void trainNetworksRandom(int n);
void updateOutput(float *v, int d, int n, int i);
void updateNetwork(float *v, int d, int n);
void updateNetwork2(float *v, float *w, int d, int n); // updating network 'n' 
void shuffleOutputs(int d);

void setBlockOptimaDefault(void);
float blockGlobalOptimumFitness(void);
void blockGlobalOptimumSequence(float *v);
float blockFitness(float *v);
void setNeighborDemes(int n, int m);

void evolution();
void evolution_initialization(int t);
void evolution_gen_environment(int t);
void test_versatility(int t);
DEME *evolution_gen_update(int t);
void evolution_gen_calcfitness(int t);
float *evolution_gen_calcbestfitness(int t);
DEME *evolution_gen_selection(int t);
void evolution_gen_calcmutation(int t);
void evolution_gen_replacemutation(int t);
void return_fitness(float *w, int d);
void return_fitness_mutate(float *w, int d);


};

#endif // __CLANG_SAMPLE_H__
