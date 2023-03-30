// Deme-besed metapopulational search
// by István Zachar
// patterns are represented as (-1.0, 1.0) floats
// version 1


#include <stdio.h>
#include <stdint.h>
#include <math.h>
#include <inttypes.h>

#include "randomGenerator.c" // own RNG library (same as András's, with minor bugfix and extra functionality) 
//#include "ran4.c"            // for Nk's pseudorandom generator; ran4 should only be used for Nk, not for any other random number, as it would mess up the seed's state
//#include "colors.c"          // for monitoring purposes only

#include "darwinian_rbm_meta_rap.h"

#define SEED 227063

// 0 = unchanged input
// 1 = mutated output (P_mut = 1/N)
// 2 = correlated output 
// 3 = random output
// 4 = autoassociative attractor neural network
// 5 = autoassociative attractor neural network, with no spurious pattern
//#define TYPE 4 // type of operator to turn input to output

// Fitness landscape & problem size
//#define N       20  // number of neurons (200) // if Nk landscape is used, the maximal value of N is 63!
//#define P       10   // partition size; must be an integer that divides N
//#define T       2   // number of optima per block
//#define B       N/P // number of blocks per sequence
#define FITNESS blockFitness //(blockFitness) // fitness function (1.0 is best, minimum need not be 0.0): pearsonFitness, hammingFitness, NkFitness, blockFitness
#define F       N   // Nk landscape phenotype length (generally safe to have N = P
#define K       6   // Nk landscape number of epistatic neighbours (uniform for each gene; subsequence length is K+1)

// Demes
#define SPATIAL 1 // use spatial lattice?
//#define DX 10     // 1st dimension of spatial deme lattice
//#define DY 10     // 2nd dimension of spatial deme lattice
//#define DN DX*DY  // total deme number

// Multinetwork population
//#define NN            10    // population size of a deme (number of networks)
#define ELITESEL      0    // select best from population OR select one randomly for replication
#define RECOMBINATION 0.1 //(0.1)    // probability of recombining two output sequences; if not recombination, migration
#define MIGRATION     0.004 //(0.004)   // probability of migration; only if DN > 1
#define MUTATION      1.0/(float)N // per-bit mutation rate of re-entered output of previous generation
#define LEARNING      1.    // probability of learning

// Simulation time
#define MAXT       10000  // number of generations
#define RESOLUTION 1
#define VERBOSE    0
#define ENDFRAME   500 //(RESOLUTION)

// Autoassociative attractor neural networks
#define UPDATENUM  5 // (100) // number of update steps (100)
#define THRESHOLD  0. // firing threshold
#define TRAINNUM   5    // number of networks to be trained with the same output (though differently noised) (only if TYPE >= 4)
#define LEARNNOISE 0. // per-bit mutation rate of re-learned output of previous generation (only if TYPE >= 1)

// Attractor network testing (only if TYPE >= 5)
//#define TESTSTORED    0   // test storedness of output (always on if TYPE >= 5)
//#define PN            N   // maximal number of stored patterns (N/sqrt(2*ln(N)) * 1.1); only used for tracking learned patterns in some tests
#define TESTTOLERANCE 0. // accept equivalence if output is closer than (or equal to) tolerance (in relative Hamming distance)
#define TESTNOISE     0.05// noise applied for iterative reentry of the same input





// RBM

void Darwinian_deme::train_rbm(float *v, int d, int n){
    int i, j, k;
    float v_0[n_v], p_h_0[n_h], p_h[n_h];//, v_1[n_v];
    
        copyPatternN(v_0, v, n_v);
        for(j=0; j<n_h; j++){
            p_h_0[j] = 0;
            for(k=0; k<n_v; k++){
                p_h_0[j] += deme[d].weight_rbm[n][j][k] * v_0[k];
            }
            p_h_0[j] += deme[d].b_rbm[n][j];
            p_h_0[j] = sigmoid_rbm(p_h_0[j]);
        }
        
        copyPatternN(v, v_0, n_v);
        encode_decode_rbm(v, p_h, d, n);
        update_rbm(v_0, v, p_h_0, p_h, d, n);
}
void Darwinian_deme::encode_rbm(float *v, int d, int n){

    int j, k;
    float p_h[n_h], h[n_h], p_v[n_v];

    for(j=0; j<n_h; j++){
        p_h[j] = 0;
        for(k=0; k<n_v; k++){
            p_h[j] += deme[d].weight_rbm[n][j][k] * v[k];
        }
        p_h[j] += deme[d].b_rbm[n][j];
        p_h[j] = sigmoid_rbm(p_h[j]);
        if (randd() < p_h[j]) {
            h[j] = 1.0;
        } else{
            h[j] = -1.0;
        }
    }
        

    for(j=0; j<n_v; j++){
        p_v[j] = 0;
        for(k=0; k<n_h; k++){
            p_v[j] += deme[d].weight_rbm[n][j][k] * h[k];
        }
        p_v[j] += deme[d].a_rbm[n][j];
        p_v[j] = sigmoid_rbm(p_v[j]);
        if (randd() < p_v[j]) {
            v[j] = 1.0;
        } else{
            v[j] = -1.0;
        }
    }


}
void Darwinian_deme::encode_decode_rbm(float *v, float *p_h, int d, int n){

    int i, j, k;
    float h[n_h], p_v[n_v];

    for (i=0; i<T_rbm; i++){

        for(j=0; j<n_h; j++){
            p_h[j] = 0;
            for(k=0; k<n_v; k++){
                p_h[j] += deme[d].weight_rbm[n][j][k] * v[k];
            }
            p_h[j] += deme[d].b_rbm[n][j];
            p_h[j] = sigmoid_rbm(p_h[j]);
            if (randd() < p_h[j]) {
                h[j] = 1.0;
            } else{
                h[j] = -1.0;
            }
        }
        

        for(j=0; j<n_v; j++){
            p_v[j] = 0;
            for(k=0; k<n_h; k++){
                p_v[j] += deme[d].weight_rbm[n][j][k] * h[k];
            }
            p_v[j] += deme[d].a_rbm[n][j];
            p_v[j] = sigmoid_rbm(p_v[j]);
            if (randd() < p_v[j]) {
                v[j] = 1.0;
            } else{
                v[j] = -1.0;
            }
        }

        
    }


}
void Darwinian_deme::encode_rbm2(float *v, float *w, int d, int n){

    int j, k;
    float p_h[n_h], h[n_h], p_v[n_v];

    for(j=0; j<n_h; j++){
        p_h[j] = 0;
        for(k=0; k<n_v; k++){
            p_h[j] += deme[d].weight_rbm[n][j][k] * v[k];
        }
        p_h[j] += deme[d].b_rbm[n][j];
        p_h[j] = sigmoid_rbm(p_h[j]);
        if (randd() < p_h[j]) {
            h[j] = 1.0;
        } else{
            h[j] = -1.0;
        }
    }
        

    for(j=0; j<n_v; j++){
        p_v[j] = 0;
        for(k=0; k<n_h; k++){
            p_v[j] += deme[d].weight_rbm[n][j][k] * h[k];
        }
        p_v[j] += deme[d].a_rbm[n][j];
        p_v[j] = sigmoid_rbm(p_v[j]);
        if (randd() < p_v[j]) {
            w[j] = 1.0;
        } else{
            w[j] = -1.0;
        }
    }


}

void Darwinian_deme::update_rbm(float *v_0, float *v, float *p_h_0, float *p_h, int d, int n){

    int j, k;


    for(j=0; j<n_v; j++){
        for(k=0; k<n_h; k++){
            deme[d].weight_rbm[n][j][k] += epsilon_rbm * (v_0[j] * p_h_0[k] - v[j] * p_h[k]);
        }
    }

    for(j=0; j<n_v; j++){
        deme[d].a_rbm[n][j] += epsilon_rbm * (v_0[j]- v[j]);
    }

    for(k=0; k<n_h; k++){
        deme[d].b_rbm[n][k] += epsilon_rbm * (p_h_0[k] - p_h[k]);
    }

}

float Darwinian_deme::sigmoid_rbm(float x){

    return(1.0/(1.0+exp(-x)));

}


// mathematical functions

float Darwinian_deme::pearsonCorrelation(float *u, float *v) { // Pearson product-moment correlation coefficient of vectors `u` and `v`
  int i;
  float uAvg = 0.0, vAvg = 0.0, uSqd = 0.0, vSqd = 0.0, cov = 0.0;
  
  for(i = 0; i < N; i++) {
		uAvg += u[i];
		vAvg += v[i];
  }
  uAvg = uAvg/(float)N;
  vAvg = vAvg/(float)N;
  for(i = 0; i < N; i++) {
		cov  += (u[i]-uAvg)*(v[i]-vAvg);
		uSqd += (u[i]-uAvg)*(u[i]-uAvg);
		vSqd += (v[i]-vAvg)*(v[i]-vAvg);
  }  
  return(cov/sqrt(uSqd)/sqrt(vSqd)); 
}

float Darwinian_deme::pearsonFitness(float *v) {
	return(pearsonCorrelation(v, globalBest));
}

int Darwinian_deme::hammingDistanceN(float *v, float *u, int n) { // standard HD up to length `n`
  int i, d = 0;
  for(i = 0; i < n; i++) if(v[i] != u[i]) d++;
  return(d);
}

int Darwinian_deme::hammingDistance(float *v, float *u) { // standard HD of length N
  int i, d = 0;
  for(i = 0; i < N; i++) if(v[i] != u[i]) d++;
  return(d);
}

float Darwinian_deme::relativeHammingDistance(float *v, float *u) { // HD/N
  return((float)hammingDistance(v, u)/(float)N);
}

float Darwinian_deme::hammingFitness(float *v) { // 1 - (HD/N)
  return(1.0 - relativeHammingDistance(v, globalBest));
}

int Darwinian_deme::randomMinPosition(float *v, int n) { // selects the position of the smallest value in vector `v` up to length `n`; if there are multiple instances, selects one randomly.
	float found;
	int i, count = 0, r, pos[n];
	for(i = 0; i < n; i++) pos[i] = -1;
	for(i = 0; i < n; i++) {
		if(i == 0 || v[i] < found) {
			count = 0;
			found = v[i];
		} 
		if(v[i] == found) {
			pos[count] = i;
			count++;
		}
	}
	if(count==1) r = 0;
	else         r = randl(count);
	// for(i = 0; i < n; i++) printf("%f ", v[i]);   printf("\n");
	// for(i = 0; i < n; i++) printf("%d ", pos[i]); printf("\n");
	// printf("MIN:%f   COUNT:%d   REFPOS:%d   POS:%d\n", found, count, r, pos[r]);
	return(pos[r]);
}

int Darwinian_deme::randomMaxPosition(float *v, int n) { // selects the position of the largest value in vector `v` up to length `n`; if there are multiple instances, selects one randomly.
	float found;
	int i, count = 0, r, pos[n];
	for(i = 0; i < n; i++) pos[i] = -1;
	for(i = 0; i < n; i++) {
		if(i == 0 || v[i] > found) {
			count = 0;
			found = v[i];
		} 
		if(v[i] == found) {
			pos[count] = i;
			count++;
		}
	}
	if(count==1) r = 0;
	else         r = randl(count);
	// for(i = 0; i < n; i++) printf("%f ", v[i]);   printf("\n");
	// for(i = 0; i < n; i++) printf("%d ", pos[i]); printf("\n");
	// printf("MAX:%f   COUNT:%d   REFPOS:%d   POS:%d\n", found, count, r, pos[r]);
	return(pos[r]);
}

int Darwinian_deme::firstMaxPosition(float *v, int n) { // selects the position of the largest value in vector `v` up to length `n`; if there are multiple instances, selects last (to the right).
	float max = -999.;
	int i, pos = -1;
	for(i = 0; i < n; i++) if(v[i] > max) {
		max = v[i]; 
		pos = i;
	}
	return(pos);
}



// pattern functions

int Darwinian_deme::samePatternQ(float *u, float *v) { // boolean test of pattern identity
	int i = 0, q = 1;
  while((i < N) && q) {
		if(u[i] != v[i]) q = 0;
		i++;
	}
	return(q);
}

void Darwinian_deme::copyPattern(float *to, float *from_t) {
	int i;
	for(i = 0; i < N; i++) to[i] = from_t[i];
}


void Darwinian_deme::copyPatternN(float *to, float *from_t, int n) {
	int i;
	for(i = 0; i < n; i++) to[i] = from_t[i];
}

void Darwinian_deme::copyPatternNN(float *to, float *from_t) {
	int i;
	for(i = 0; i < NN; i++) {
	    //printf("a:%f\n", from[i]);
	    //printf("b:%f\n", to[i]);
	    to[i] = from_t[i];
	}
}


void Darwinian_deme::printPattern(float *v) {
	int i;
	for(i = 0; i < N; i++) {
		if      (v[i] == -1.) printf("-");
		else if (v[i] ==  1.) printf("+");
		else                  printf(".");
	}
	printf("\n");
	fflush(stdout);
}

const char *Darwinian_deme::vectorToString(float *v, int n) { // cannot be called multiple times in e.g. printf!
	int i;
	static char s[N+1]; // maximum length of vector to be printed is N
	s[0] = '\0';
	s[n] = '\0';
  for(i = 0; i < n; i++) if(v[i] == -1.0) s[i] = '-'; else {
		if(v[i] == 1.0) s[i] = '+'; else s[i] = '.';
	}
	return(s);
}

void Darwinian_deme::mutatePattern(float *v, float mut) { // mutate pattern per-digit mutation rate `mut`
	int i;
	if(mut > 0.0) for(i = 0; i < N; i++) if(randd() < mut) v[i] = -1. * v[i];
}

void Darwinian_deme::exactlyMutatePattern(float *v, float mut) { // mutates exactly `mut*N` bits (maximally N)
	int i = 0, m = mut*N, r, ref[N] = {0};	
	if(mut > 0) {
		while(i < m && i < N) {
			do r = randl(N); while(ref[r]);
			v[r] = -1. * v[r];
			ref[r] = 1;
			i++;
		}
	}
}

void Darwinian_deme::mutateSinglebitPattern(float *v, float mut) {
	int i;
	i = randl(N/2);
	v[N/2 + i] = -1. * v[N/2 + i];
}

void Darwinian_deme::randomPattern(float *v, float mut) { // generates a random pattern with `mut` probability that a bit is +1
	int i;
	for(i = 0; i < N; i++) v[i] = (randd() < mut) ? 1.0 : -1.0;
}

void Darwinian_deme::correlatePattern(float *v, float corr) { // generate a partially uncorrelated version of vector `v` (saving back to `v`)
	int i;
  float x[N];
	if(corr < 1.0) {
		if(corr == -1.0) {
			for(i = 0; i < N; i++) v[i] *= -1.0;
		}	else {
			for(i = 0; i < N; i++) x[i] = v[i];
			while(pearsonCorrelation(x, v) >= corr) {
				i = randl(N);     
				v[i] *= -1.0;
			}
		}
	}
}

void Darwinian_deme::recombinePattern(float * u, float * v) { // two point recombination
	int i, p1 = randl( N ), p2 = randl( N );
	float temp;
	if(p1 > p2) {
		p1 = p1+p2;
		p2 = p1-p2;
		p1 = p1-p2;
	}
	for(i = p1; i < p2; i++) {
		temp = u[i];
		u[i] = v[i];
		v[i] = temp;
	}
}


// network functions

void Darwinian_deme::setWeights(void) {
  int d, i, j, k;
  for(d = 0; d < DN; d++) for(i = 0; i < NN; i++) for(j = 0; j < N; j++) for(k = 0; k < N; k++) deme[d].weight[i][j][k] = 0.0;
}

void Darwinian_deme::storePattern(float *v, int d, int i) { // tests if `v` is stored in network `i` at deme `d` or not, and pushes/stores it to most recent position (on the right)
  // If there is an identical in `stored`, remove it, shift those behind it one step to the left and store the new one at the last position
	int j = PN-1;
	while(!samePatternQ(v, deme[d].stored[i][j]) && j >= 0) j--;
	if(j < 0) j = 0; // if already present, start shift at position `j`, if not present, start shift at position 0
	for( ; j < PN-1; j++) copyPattern(deme[d].stored[i][j], deme[d].stored[i][j+1]);
	copyPattern(deme[d].stored[i][PN-1], v);
}

void Darwinian_deme::trainNetwork(float *v, int d, int n) { // training network `n` in deme `d` with vector `v`, updating `weight`
//  int i, j;
//	float h[N] = {0}, f = 1.0/(float)N;
//	for(i = 0; i < N; i++) for(j = 0; j < N; j++) h[i] += deme[d].weight[n][i][j] * v[j];
//	for(i = 0; i < N; i++) for(j = 0; j < N; j++) {
//		if(i == j) deme[d].weight[n][i][j]  = 0.0;
//		else       deme[d].weight[n][i][j] += f*v[i]*v[j] - f*v[i]*h[j] - f*v[j]*h[i];
//	}

    train_rbm(v, d, n);

}

void Darwinian_deme::trainNetworksRandom(int n) { // train each network on `n` random patterns and store these patterns
	int d, i, j;
	//float v[N];
	for(d = 0; d < DN; d++) for(i = 0; i < NN; i++) for(j = 0; j < n; j++) {
		// randomPattern(v, 0.5);
		// trainNetwork(v, d, i);
		randomPattern(deme[d].stored[i][j], 0.5);
		if(STORE) storePattern(deme[d].stored[i][j], d, i);
		trainNetwork(deme[d].stored[i][j], d, i);
	}
}

void Darwinian_deme::updateOutput(float *v, int d, int n, int i) { // update of neuron `i` in network `n` in deme `d` with threshold neuron model
   int j;
   float h = 0.0;
   for(j = 0; j < N; j++) if(j != i) h += (deme[d].weight[n][i][j]) * v[j];
   if(h >= THRESHOLD) v[i] =  1.0;
   else               v[i] = -1.0;
}

void Darwinian_deme::updateNetwork(float *v, int d, int n) { // updating network 'n' in deme `d`
   //int i, u;
   //for(u = 0; u < UPDATENUM; u++) for(i = 0; i < N; i++) updateOutput(v, d, n, randl(N));
   encode_rbm(v, d, n);
}


void Darwinian_deme::updateNetwork2(float *v, float *w, int d, int n) { // updating network 'n' in deme `d` with input `v`; output is written into `w`
   //int i, u;
   //for(u = 0; u < UPDATENUM; u++) for(i = 0; i < N; i++) updateOutput2(v, w, d, n, randl(N));
   encode_rbm2(v, w, d, n);
}

void Darwinian_deme::shuffleOutputs(int d) { // shuffle `output` population for deme `d`
  // Fisher-Yates shuffle from: http://en.wikipedia.org/wiki/Fisher%E2%80%93Yates_shuffle
	int i, j;
	float temp[N];
	for (i = NN - 1; i > 0; i--) {
			j = randl(i+1);
			copyPattern(temp,              deme[d].output[j]);
			copyPattern(deme[d].output[j], deme[d].output[i]);
			copyPattern(deme[d].output[i], temp);
	}
}


// Nk landscape
/*
uint64_t rotateRight(uint64_t num, int step) { // bitwise rotation to the right (circular)
	int s = step % N;
	return((num >> s) | ((num << (N-s)) % MAXN));
}

uint64_t rotateLeft(uint64_t num, int step) { // bitwise rotation to the left (circular)
	int s = step % N;
	return(((num << s) % MAXN) | (num >> (N-s)));
}

uint64_t fromBinaryVector(float *v) { // converts binary vector `v` of {-1, +1} to a binary integer
	int i;
	uint64_t num = 0;
	for(i = 0; i < N; i++) num += rotateRight(MAXB, i)*(v[i] > 0); // NOTE: Consider how `v` is represented! {0, 1} or {-1, +1}?
	return(num);
}

double NkFitness(float *v, float *u) { // Nk fitness of `v`, with [111..1] having w=1.0 and [000..0] having w=0.0 fitness; expecting a binary float vector `v`; ignores `u`
	int i;
	uint64_t seq, nth, num;
	double sum = 0.;
	
	num = fromBinaryVector(v);
	for(i = 0; i < F; i++) {
		seq = rotateLeft(num & MAP[i], K+1+i); // extract epistatic neighborhood of size `K+1` at position `i` from sequence `num`, according to the epistatic map `MAP`
		if((0 < seq) && (seq < MAXK-1)) {
			nth = seq + i*MAXK;
			sum += seededNthRan4(RAN4SEED, (unsigned long)nth);
		} else if(seq == MAXK-1) {
			sum += 1.0; // subsequence is of best sequence [111..1], has fitness contribution 1.0;
		} // else do not increment `sum`
		//printf("\t#%d\t%"PRIu64"\t%"PRIu64"\t%f\n", i, seq, i*MAXK, sum);
	}
	return(0.1 + 0.9*(sum/(double)F)); // NOTE
}
*/

// Block landscape

void Darwinian_deme::setBlockOptimaDefault(void) { // sets the same T optima (sequence and fitness) for the B blocks: first is [1111...], rest is [0101...]
	int i, j, k;
	for(i = 0; i < B; i++) {
		for(j = 0; j < T; j++) {
			if(j == 0) {
				for(k = 0; k < P; k++) blockOptimaSequence[i][j][k] = 1.0; // [1111...]
				blockOptimaFitness[i][j] = 10.0;
			} else {
				for(k = 0; k < P; k++) blockOptimaSequence[i][j][k] = (k % 2)?(1.0):(-1.0); // [0101...]
				blockOptimaFitness[i][j] = 1.0;
			}
		}
	}
}

float Darwinian_deme::blockGlobalOptimumFitness(void) { // calculates global optimum using `blockOptimaSequence` and `blockOptimaFitness`
	int i, j, bestP;
	float bestW, sum = 0.0;
	for(i = 0; i < B; i++) {
		bestW = 0.0; // best fitness
		bestP = -99; // position of best fitness
		for(j = 0; j < T; j++) { // find best fitnessed target for given block; assuming there are no to identical best fitnesses
			if(blockOptimaFitness[i][j] > bestW) {
				bestP = j;
				bestW = blockOptimaFitness[i][j];
			}
		}
		for(j = 0; j < T; j++) if(j == bestP) sum += bestW; else sum += 1.0/(1.0 + hammingDistanceN(blockOptimaSequence[i][bestP], blockOptimaSequence[i][j], P));
	}
	return(sum);
}

void Darwinian_deme::blockGlobalOptimumSequence(float *v) { // calculates global optimum using `blockOptimaSequence` and `blockOptimaFitness`
	int i, j, bestP;
	float bestW;
	for(i = 0; i < B; i++) {
		bestW = 0.0; // best fitness
		bestP = -99; // position of best fitness
		for(j = 0; j < T; j++) { // find best fitnessed target for given block; assuming there are no to identical best fitnesses
			if(blockOptimaFitness[i][j] > bestW) {
				bestP = j;
				bestW = blockOptimaFitness[i][j];
			}
		}
		for(j = 0; j < P; j++) v[i*P + j] = blockOptimaSequence[i][bestP][j];
	}
}

float Darwinian_deme::blockFitness(float *v) { // building block fitness; rescales range (min, max) to (min/max, 1.0)
	int i, j, d;
	float c, block[P], sum = 0.0;
	for(i = 0; i < B; i++) {
		for(j = 0; j < P; j++) block[j] = v[i*P + j];
		for(j = 0; j < T; j++) {
			d = hammingDistanceN(block, blockOptimaSequence[i][j], P);
			if(d == 0) c = blockOptimaFitness[i][j]; else c = 1.0/(1.0+(float)d);
			sum += c;
			//printf("\t%d %d %d %f %f\n", i, j, d, c, sum);
		}
	}
	return(sum/blockGlobalMax);
}


// Deme functions

void Darwinian_deme::setNeighborDemes(int n, int m) { // sets up a lookup table for neughboring positions for each matrix element; 8 neighbours, no periodic boundary
	int i, j, k, pos[n][m], c = 0, p;
  for(i = 0; i < n; i++) for(j = 0; j < m; j++) {
		pos[i][j] = c++;
		for(k = 0; k < 8; k++) matrixNeighbors[i*m + j][k] = -99;
	}
	// for(i = 0; i < n; i++) for(j = 0; j < m; j++) printf("%2d%s", pos[i][j], (j == m-1)?"\n":" ");
	// for(i = 0; i < n*m; i++) for(j = 0; j < 8; j++) printf("%d%s", matrixNeighbors[p][j], (j == 7)?"\n":" ");
	for(i = 0; i < n; i++) for(j = 0; j < m; j++) {
		c = 0;
		p = i*m + j;
		if(i > 0) {
			if(j > 0)   matrixNeighbors[p][c++] = pos[i-1][j-1];
			            matrixNeighbors[p][c++] = pos[i-1][j];
			if(j < m-1) matrixNeighbors[p][c++] = pos[i-1][j+1];
		}
	  if(j > 0)   matrixNeighbors[p][c++] = pos[i][j-1];
	  if(j < m-1) matrixNeighbors[p][c++] = pos[i][j+1];
		if(i < n-1) {
			if(j > 0)   matrixNeighbors[p][c++] = pos[i+1][j-1];
			            matrixNeighbors[p][c++] = pos[i+1][j];
			if(j < m-1) matrixNeighbors[p][c++] = pos[i+1][j+1];
		}
	}
}


void Darwinian_deme::evolution_initialization(int t){

	int i, j = 0;

	seed(SEED); // seed RNG of randomGenerator.c with `unsigned long`
	//RAN4SEED = randl(LONG_MAX); // seed for Nk algorithm (`ran4` seed, required so that `ran4` depends on the session, i.e. on the overall randomizer state set by `SEED`)

        // Landscaping
	/* Pearson correlation */
        //randomPattern(globalBest, 0.5); 
	/* Nk landscape */
	// randomPattern(globalBest, 1.0); // [111..1]
	// for(i = 0; i < K+1; i++) MAP[0] = MAP[0] + pow(2, N-i-1); // generate epistatic map; here a circular sequence is used with K neighbours to the right
	// for(i = 0; i < F;   i++) MAP[i] = rotateRight(MAP[0], i);
	/* Block landscape */		
	setBlockOptimaDefault(); // generate optima
	blockGlobalOptimumSequence(globalBest);
	blockGlobalMax = blockGlobalOptimumFitness();
	if(VERBOSE) {
		printf("Block target optima ({N=%d P=%d B=%d T=%d):\n", N, P, B, T);
		for(i = 0; i < B; i++) {
			printf("BLOCK #%d\n", i);
			for(j = 0; j < T; j++) printf("\tT%d %s %f\n", j, vectorToString(blockOptimaSequence[i][j], P), blockOptimaFitness[i][j]);
		}
		printf("Global:\t%s %f\n\n", vectorToString(globalBest, N), blockGlobalMax);
	}

}
void Darwinian_deme::evolution_gen_environment(int t){

	int i, d = 0;

	// Initial setup
	if(SPATIAL) setNeighborDemes(DX, DY);
	for(d = 0; d < DN; d++) for(i = 0; i < NN; i++) randomPattern(deme[d].output[i], 0.5);
		
	// Network setup
	if(TYPE >= 4) {
		setWeights();
		trainNetworksRandom(PN);
	}

}void Darwinian_deme::test_versatility(int t) {

    	        int i, j, k, d, e = 0;
    	        float hd = 0.0; 
    	        int storedC = 0;
    	        
		
                //printf("a\n");
		for(d = 0; d < DN; d++) {
			/* Update output based on new input */
			if(t > 0) {
                                for(i = 0; i < NN; i++) {
                                        for(k = 0; k < NN; k++) {
                                                updateNetwork2(deme[d].output[k], deme[d].versatility[i*NN+k], d, i);        
                                                //printf("%d: %f\t", i*NN+k, deme[d].versatility[i*NN+k][0]);
                                                for(j=0; j<i*NN+k; j++){
                                        
                                                       hd += relativeHammingDistance(deme[d].versatility[i*NN+k], deme[d].versatility[j]);
                                                }
                                                if (hd > 0.0001){
                                                        
                                                        storedC++;
                                                }
                                        
                                        }
                                }

                       



                       }
               }
               
               
		if(!(t % (RESOLUTION*100))) {

			printf("storedC: %d: %d\t", t, storedC+1);
			//printf("\n");
			//fflush(stdout);
		}
               


}


DEME *Darwinian_deme::evolution_gen_update(int t){

	int i, d, j, k = 0;
    	        float hd = 0.0;
    	        int storedCA = 0;

	for(d = 0; d < DN; d++) {
			
		/* Update output based in new input */
		if(t > 0) {
			shuffleOutputs(d);
			if(TYPE >= 5) for(i = 0; i < NN; i++) copyPattern(deme[d].input_t[i], deme[d].output[i]);
					
			if(TYPE == 0){
			} else // 0 = unchanged input
			if(TYPE == 1) {for(i = 0; i < NN; i++) mutatePattern(   deme[d].output[i], 1.0/(float)N);} else // 1 = mutated output
			if(TYPE == 2) {for(i = 0; i < NN; i++) correlatePattern(deme[d].output[i], 1.0 );} else // 2 = correlated output
			if(TYPE == 3) {for(i = 0; i < NN; i++) randomPattern(   deme[d].output[i], 0.5 );} else // 3 = random output
			if(TYPE >= 4) {for(i = 0; i < NN; i++) {updateNetwork(   deme[d].output[i], d, i);
			
	for(k = 0; k < DN; k++) {
                                        for(j=0; j<i; j++){
                                        
                                               hd += relativeHammingDistance(deme[d].output[i], deme[k].output[j]);
                                        }
                                }        
                                        if (hd > 0.0001){
                                                        
                                                storedCA++;
                                        }
}			
			
			}      // 4 = AANN
																																																// 5 = AANN with no spurious output (iterate until stored)
		}
					

				
	}
	
		if(!(t % (RESOLUTION*100))) {

			printf("storedCA: %d: %d\t", t, storedCA+1);
			printf("\n");
			fflush(stdout);
		}

	
        return(deme);			
}

void Darwinian_deme::evolution_gen_calcfitness(int t){

	int i, j, d = 0;

	for(d = 0; d < DN; d++) {

		for(i = 0; i < NN; i++) {
					
			/* Test storedness */
			if(STORE) { 
				float hd[PN], minhd = 1.0;
						
				for(j = 0; j < PN; j++) {
					hd[j] = relativeHammingDistance(deme[d].output[i], deme[d].stored[i][j]);
					if(hd[j] < minhd) minhd = hd[j];
				}
						
				while ((TYPE >= 5) && (minhd > TESTTOLERANCE)) { // repeat input->output if output is not stored
					copyPattern(deme[d].output[i], deme[d].input_t[i]);
					mutatePattern(deme[d].output[i], TESTNOISE);
					updateNetwork(deme[d].output[i], d, i);
					for(j = 0; j < PN; j++) {
						hd[j] = relativeHammingDistance(deme[d].output[i], deme[d].stored[i][j]);
        					if(hd[j] < minhd) minhd = hd[j];
					}
				}
						
				deme[d].storedP[i] = randomMinPosition(hd, PN);
				deme[d].storedD[i] = hd[deme[d].storedP[i]];
				deme[d].storedQ[i] = (deme[d].storedD[i] <= TESTTOLERANCE);
				//storedC += deme[d].storedQ[i];						
			}
			
			deme[d].w[i] = FITNESS(deme[d].output[i]);
		}
	}

}
float *Darwinian_deme::evolution_gen_calcbestfitness(int t){

	int i, d = 0;
	int bestD = -99, bestP = -99; 
	float bestW = -99., avgW = 0, worstW = 1000.;


	for(d = 0; d < DN; d++) {

		// Find best solution (chose one randomly, if there are multiple with identical HD-s) 
		deme[d].avgW = 0.0;
		for(i = 0; i < NN; i ++) deme[d].avgW += deme[d].w[i]; 
		deme[d].maxP = randomMaxPosition(deme[d].w, NN); // NOTE: this might chose a position that is not an attractor, however there might be another that is.
		deme[d].maxW = deme[d].w[deme[d].maxP];
		//printf("A%f\n", deme[d].maxW);
      		//printf("B%f\n", deme[d].maxW);
		deme[d].minP = randomMinPosition(deme[d].w, NN); // NOTE: this might chose a position that is not an attractor, however there might be another that is.
      		//printf("C%f\n", deme[d].maxW);
		deme[d].minW = deme[d].w[deme[d].minP];
		deme[d].avgW = deme[d].avgW/(float)NN;
		copyPattern(deme[d].maxOutput, deme[d].output[deme[d].maxP]);
      		//printf("D%f\n", deme[d].maxW);
      		//printf("F%f\n", bestW);
		if(deme[d].maxW > bestW) {
              		//printf("E%f\n", deme[d].maxW);
        		bestD = d;
			bestW = deme[d].maxW;
			bestP = deme[d].maxP;
		}
		if(deme[d].minW < worstW){
		        worstW = deme[d].minW;
		}
		avgW += deme[d].avgW;
		
	}

	if(!(t % RESOLUTION)) {
		printf("darwinian: %d\t%f\t%f\t%f\t%d\t%d\t%f\t%f\t\n", t, bestW, (avgW/((float)DN)), worstW, deme[bestD].storedQ[bestP], deme[bestD].storedP[bestP], deme[bestD].storedD[bestP]);
        	//printf("%d\t%f\tR%d\tM%d\tL%d\t%d.%d.%s\n", t, bestW, recombineQ, migrateQ, learnQ, bestD, bestP, vectorToString(deme[bestD].output[bestP], N));
		//printf("darwinian:\t%d\t%f\t%d\n", t, bestW, deme[bestD].storedQ[bestP]);
		fflush(stdout);
	}
	

        //bestD = 1;
        //bestP = 1;
	return(deme[bestD].output[bestP]);

}


DEME *Darwinian_deme::evolution_gen_selection(int t){

	int d = 0;
	// Selection (recombination or mutation)
        //printf("selection0\n");
	for(d = 0; d < DN; d++) {
		int p1;
		//float w1, v1[N];
		//printf("selection1\n");
		if(ELITESEL) p1 = deme[d].maxP; else p1 = randl(NN);
					
		if(randd() < RECOMBINATION) {
			int p2;
			//float w2, v2[N];

        		//printf("selection2\n");

                       deme[d].recombination = 1;						
			/* Recombine */
			//recombineQ++;
			copyPattern(deme[d].v1, deme[d].output[p1]);
        		//printf("selection4:%d,%d,%d\n", p1, p2, NN);
			do {
        			p2 = randl(NN); 
                		//printf("selection4_2:%d,%d,%d\n", p1, p2, NN);
			}while (p2 == p1);
        		//printf("selection5\n");
			if((DN > 1) && (randd() < MIGRATION)) {
				/* Migrate */
				int e;
							
        			if(SPATIAL) {
        				do e = matrixNeighbors[d][randl(8)]; while (e < 0); // select neighboring deme on lattice
      				} else {
					do e = randl(DN); while (e == d); // select random other deme
				}
                		//printf("selection6\n");
							
				copyPattern(deme[d].v2, deme[e].output[p2]);
				//migrateQ++;
				//printf("\t\t%d -> %d\n", e, d);
			} else {
				copyPattern(deme[d].v2, deme[d].output[p2]);
			}
			recombinePattern(deme[d].v1, deme[d].v2);
        		//printf("selection7\n");
		} else {
                       deme[d].recombination = 0;						
			/* Mutate */
        		//printf("selection3\n");
			copyPattern(deme[d].v1, deme[d].output[p1]);
			mutatePattern(deme[d].v1, MUTATION);
		}
					
	} // deme `d`
	//printf("selection done\n");
	
        return(deme);
}
void Darwinian_deme::evolution_gen_calcmutation(int t){

        int d = 0;
        
	for(d = 0; d < DN; d++) {
                if (deme[d].recombination == 1){
			deme[d].w1 = FITNESS(deme[d].v1);
			deme[d].w2 = FITNESS(deme[d].v2);
        		//printf("selection8\n");
			if(deme[d].w1 < deme[d].w2) {
				copyPattern(deme[d].v1, deme[d].v2);
				deme[d].w1 = deme[d].w2;
			}               
                } else{
			deme[d].w1 = FITNESS(deme[d].v1);               
                }

        }

}
void Darwinian_deme::evolution_gen_replacemutation(int t){

	int i, d, k = 0;
	for(d = 0; d < DN; d++) {
		/* Replication & learn */
		if((deme[d].w1 > deme[d].minW)) {
			copyPattern(deme[d].output[deme[d].minP], deme[d].v1); // replace ONE of the worst patterns in the output
			//for(i = 0; i < NN; i++); copyPattern(deme[d].output[i], v1); // replace ALL of the output population with the new output
						
			if((TYPE >= 4) && (randd() < LEARNING)) { // Learning
				int pos[NN] = {0};
				float toLearn[N];
				for(k = 0; k < ((TRAINNUM>NN)?NN:TRAINNUM); k++) { // the best pattern is assured to be trained to TRAINNUM *different* networks (faster convergence)
					//learnQ++;
					do i = randl(NN); while(pos[i]);
					pos[i] = 1;
					copyPattern(toLearn, deme[d].v1);
					mutatePattern(toLearn, LEARNNOISE);
					trainNetwork(toLearn, d, i);
					if(STORE) storePattern(toLearn, d, i); // Store learnt patterns in `stored` only if there is no identical already
				}
			}
		}			
        }

}

void Darwinian_deme::return_fitness(float *w, int d){
        //printf("H\n");
        //printf("%f\t%f\t%d\n", w[0], w[1], d);
        //printf("%f\t%f\n", deme[d].w[0], deme[d].w[1]);
        copyPatternNN(deme[d].w, w);
        //printf("I\n");
}

void Darwinian_deme::return_fitness_mutate(float *w, int d){
        //printf("w1%f\t%f\n", deme[d].w1, w[0]);
        //printf("w2%f\t%f\n", deme[d].w1, w[1]);
        deme[d].w1 = w[0];
        deme[d].w2 = w[1];
}




void Darwinian_deme::evolution() {


	
	if(1) { // Multiple networks searching for global optimum
		int t = 0, terminateSum = 0;
		

               evolution_initialization(t);
		
               evolution_gen_environment(t);
		
		
		// Generations
		while(t < MAXT && terminateSum < ENDFRAME) {
			
			
                       evolution_gen_update(t);


                       evolution_gen_calcfitness(t);

                       evolution_gen_calcbestfitness(t);

	
			if(t > 0) { // skip this in the first turn

                               evolution_gen_selection(t);

                               evolution_gen_calcmutation(t);
			        evolution_gen_replacemutation(t);
				

			}
		
		
			//if(VERBOSE && (bestW == 1.0)) terminateSum++; else terminateSum = 0;
			//if((bestW == 1.0)) terminateSum++; else terminateSum = 0;
	
			
			
			t++;
		}
	}
	
	
}

int main(int argc, char** argv) {
  Darwinian_deme a;
  a.evolution();
}

