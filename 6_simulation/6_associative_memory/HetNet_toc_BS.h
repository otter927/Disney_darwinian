#include <stdio.h>
#include <string> 
#include <cstring> 
#include <cmath> 
#include <vector>
#include <list>
#include <tuple>

#pragma once

using namespace std;

//class BS():
//class MBS(BS):
//class SBS(BS):
//class UE():
//class Link():
//class Simulator():

//class Simulator;

class UE;
class Link;
class Simulator;


class BS
{
    public:
    double x_position;
    double y_position;
    double z_position;
    
    int id;
    int state; //UL:0, DL:1
    int cell_id;
    int cell_color;
       
    string BStype;

    double TX_power;
    double antenna_gain_after_cable_loss;
    double noise_figure;
    double bandwidth;
    
    int max_antenna_ul, max_antenna_dl; // no antenna !!!!!!!!!!!!!!!
    
    int config_p[10][10] = {
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
        {0, 0, 0, 0, 0, 0, 0, 0, 1, 1},
        {0, 0, 0, 0, 0, 0, 0, 1, 1, 1},
        {0, 0, 0, 0, 0, 0, 1, 1, 1, 1},
        {0, 0, 0, 0, 0, 1, 1, 1, 1, 1},
        {0, 0, 0, 0, 1, 1, 1, 1, 1, 1},
        {0, 0, 0, 1, 1, 1, 1, 1, 1, 1},
        {0, 0, 1, 1, 1, 1, 1, 1, 1, 1},
        {0, 1, 1, 1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
        };
    int config[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    
    vector<double> sentdata_ul_list;
    vector<double> sentdata_dl_list;
    vector<double> throughput_ul_list;
    vector<double> throughput_dl_list;    
    
    vector<UE *> inside_UE;
    vector<UE *> connecting_UE_ul;
    vector<UE *> connecting_UE_dl;
    vector<UE *> c_connecting_UE_ul;
    vector<UE *> c_connecting_UE_dl;

    BS(string BStype, int id_x, int cell_color, double x_pos, double y_pos, double z_pos, int cell_id);

    tuple<double, double, double> get_xyz(void);
    string get_type(void);
    string get_name(void);
    int get_state(void);
    void set_state(int x);
    double get_TX_power(void);
    double get_antenna_gain(void);
    double get_noise_figure(void);
    int get_cell_id(void);
    void sim_set_state_darwinian_quad(vector<float> &config_x, int x);
    void sim_set_config_supervised_learning(vector<float> & config_x);
    void sim_set_state_supervised_learning(int x);
    float get_ul_rate_inside_UE();
    float get_ul_inside_UE();
    float get_dl_inside_UE();
    pair<double, double> get_bs_sentdata_total();
    vector<UE *> get_inside_UE();
    int get_inside_UE_num();
    void remove_inside_UE(UE *x);
    vector<UE *> get_connecting_UE_ul();
    vector<UE *> get_connecting_UE_dl();
    void remove_connecting_UE_ul(UE *x);
    void remove_connecting_UE_dl(UE *x);
    bool set_connecting_UE_ul(UE *x);
    bool set_connecting_UE_dl(UE *x);
    void set_inside_UE(UE *x);
    void set_c_connecting_UE();

};


