#include <stdio.h>
#include <string> 
#include <cstring> 
#include <cmath> 
#include <vector>
#include <list>
#include <iostream>

#include"HetNet_toc_BS.h"
#include"HetNet_toc_UE.h"
#include"HetNet_toc_Link.h"
#include"HetNet_toc_Sim.h"
#include"HetNet_toc_func.h"

using namespace std;

//class BS():
//class MBS(BS):
//class SBS(BS):
//class UE():
//class Link():
//class Simulator():

//class Simulator;



double calc_d(tuple<double, double, double> s, tuple<double, double, double> d){
    double ans;
    //ans = sqrt(pow(s[0] - d[0], 2) + pow(s[1] - d[1], 2) + pow(s[2] - d[2], 2));
    ans = sqrt(pow(get<0>(s) - get<0>(d), 2) + pow(get<1>(s) - get<1>(d), 2) + pow(get<2>(s) - get<2>(d), 2));
    return ans;
}    

double d2w(double x){
    return(pow(10, x/10.0));
}

double w2d(double x){
    return(10 * log10(x));
}

double dsum(double x, double y){
    return(10 * log10(pow(10, x/10.0) + pow(10, y/10.0)));
}

