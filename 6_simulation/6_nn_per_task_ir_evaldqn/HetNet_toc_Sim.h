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

    double m_rate = 0.0;//0.3;//0.0;//0.7;//0.1;//0.7; //0.3, 0.7, 0.1
    
    double arrival_rate;
    
    int time_step;
    int time_slot;
    
    int file_num;
    
    double alpha = 0.0;
    
    int NN;
  int N = 80;//16;
    int input_size = 180;
   
    vector<float> ul_dl_rate_vector;
    vector<float> output_vector;

    double bandwidth = 10.0;

    Simulator(vector<double> &position_list, vector<float> &ul_dl_rate_vector_tmp, double alpha_tmp);
    double path_loss(BS *lbs, UE *lue, int direction);
    double path_loss_bs2bs(BS *lbs, BS *lbs2);
    double path_loss_ue2ue(UE *lue, UE *lue2);
    double shadowing(BS *lbs, UE *lue, int direction);
    double shadowing_bs2bs(BS *lbs, BS *lbs2);
    double shadowing_ue2ue(UE *lue, UE *lue2);
    double signal(BS *lbs, UE *lue, int direction);
    double signal_bs2bs(BS *lbs, BS *lbs2);
    double signal_ue2ue(UE *lue, UE *lue2);
    double capacity_calculation();
    double capacity_calculation2();
    double Uniform(void);
    double rand_normal(double mu, double sigma);
    double capacity_calculation3(vector<vector<vector<double>>> & sinr_map_all);
    double execute_sim_darwinian(vector<double> &position_list);
    double execute_sim_random(vector<double> &position_list, vector<vector<vector<double>>> & sinr_map_all);
    double execute_sim_random2(vector<double> &position_list);
    double execute_sinrmap(FILE *fp);
    double execute_sim_get_UE_throughput(vector<double> &position_list, FILE *fi);
    double execute_sim_supervised_evaluation(vector<double> &position_list, vector<vector<double>> &foward_list, vector<vector<vector<double>>> & sinr_map_all, FILE *fi, vector<FILE *>fo, int file_num_tmp, vector<float> &wr, vector<float> &wroutput_vector);
    double execute_sim_dqn_evaluation(vector<double> &position_list, vector<vector<double>> &foward_list, vector<vector<vector<double>>> & sinr_map_all, FILE *fi, FILE *fr, FILE *fro, vector<FILE *>fo_list, int file_num_tmp);
    void del_link_ul(Link *x);
    void del_link_dl(Link *x);
    void set_send_recieve();
    void add_link(Link *x);
    void move_file(vector<double> &position_list);
    void reset_throughput();
    void sum_UE_throughput();


};

