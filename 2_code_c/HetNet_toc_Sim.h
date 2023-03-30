#include <stdio.h>
#include <string> 
#include <cstring> 
#include <cmath> 
#include <vector>
#include <list>
#include <tuple>
#include<iterator>
#include<random>
#include<algorithm>

#pragma once

using namespace std;

//class BS():
//class MBS(BS):
//class SBS(BS):
//class UE():
//class Link():
//class Simulator():

//class Simulator;

class BS;
class UE;
class Link;


class Simulator
{

    public: 
    vector<Link *> Link_list;
    vector<BS *> BS_list;
    vector<UE *> UE_list;
    
    vector<double> throughput_ul_list;
    vector<double> throughput_dl_list;
    vector<double> throughput_ul_mbs_list;
    vector<double> throughput_dl_mbs_list;
    vector<double> throughput_ul_sbs_list;
    vector<double> throughput_dl_sbs_list;

    vector<mt19937> rand_pointer_ul;
    vector<exponential_distribution<double>> expp_ul;
    vector<mt19937> rand_pointer_dl;
    vector<exponential_distribution<double>> expp_dl;
    //int ul_random[10][18];// = np.random.poisson(self.arrival_rate, (1000, 18000)) ##max_num    
    //int dl_random[10][18];// = np.random.poisson(self.arrival_rate, (1000, 18000)) ##max_num    
    //int ul_random[1000][18000];// = np.random.poisson(self.arrival_rate, (1000, 18000)) ##max_num    
    //int dl_random[1000][18000];// = np.random.poisson(self.arrival_rate, (1000, 18000)) ##max_num    

    
    double arrival_rate;
    
    int time_step;
   
    
    Simulator(vector<double> position_list);
    double path_loss(BS *lbs, UE *lue, int direction);
    double shadowing(BS *lbs, UE *lue, int direction);
    double signal(BS *lbs, UE *lue, int direction);
    double capacity_calculation();
    double capacity_calculation2();
    double execute_sim_darwinian(vector<double> position_list);
    double execute_sim_random(vector<double> position_list);
    void del_link_ul(Link *x);
    void del_link_dl(Link *x);
    void set_send_recieve();
    void add_link(Link *x);
    void move_file(vector<double> position_list);
    void reset_throughput();
    void sum_UE_throughput();


};

