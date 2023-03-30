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

struct Data {
    BS *bs;
    double remaining_data_size;
    double original_data_size;
    int send_begin;
    int time_stamp;
    int direction; //UL:0, DL:1
    int id;
};

class BS;
class Link;
class Simulator;


class UE
{
    public:
    Simulator *sim;
    double x_position;
    double y_position;
    double z_position;
    double x_axis;
    double y_axis;
    string UEtype;
    int id;
    int cell_color;
    vector<Link *> delete_link_list_ul;
    vector<Link *> delete_link_list_dl;
    
    BS *bs;
    vector<Data *> data_list;
    vector<Data *> data_list_copy;
    BS *inside_BS;
    BS *connecting_BS;

    vector<double> throughput_ul_list;
    vector<double> throughput_dl_list;
    vector<double> throughput_ul_mbs_list;
    vector<double> throughput_dl_mbs_list;
    vector<double> throughput_ul_sbs_list;
    vector<double> throughput_dl_sbs_list;
    
    int max_id = 0;
    double data_size = 0.5 * 32; //#8 #Mbyte 0.5MB * pow(10, 6) 
   
    //static double TX_power;
    double antenna_gain;
    double noise_figure, power_class, power_control_MBS_UE, power_control_SBS_UE, power_control_alpha;
    list<double> interf_dl;
    
    UE(Simulator *sim_x, string UEtype, int id_x, int cell_color_x, double x_pos, double y_pos, double z_pos, BS *bs_x);
    string get_name(void);    
    tuple<double, double, double> get_xyz(void);
    double get_TX_power(void);
    double get_antenna_gain(void);
    double get_noise_figure(void);
    double append_interf_dl(double interf);
    double cp_data_list(void);
    
    Link *find_link(BS *lbs, UE *lue, int direction);
    void append_sentdata(Data *d, double capacity, int direction);
    void calc_UE_throughput(Data *d, int direction);
    void removeData(vector<Data *> & d, Data *d_x);
    double send(int slot_id);
    double send_test(int slot_id);
    double recieve(int slot_id);
    double recieve_test(int slot_id);
    void clear_links_ul();
    void clear_links_dl();
    void delete_link_ul(Link *i);
    void delete_link_dl(Link *i);
    void renew_time_stamp();
    BS *get_inside_BS();
    void set_inside_BS(BS *x);
    void set_connecting_BS(BS *x);
    BS *find_BS(BS *old_bs);
    void remove_connecting_BS();
    vector<Data *> get_data_list();
    Link *gen_link(BS *lbs, UE *lue, int direction);
    int get_id();
    bool not_at_gate();
    void gen_data(BS *bs, int data_size, int direction);
    void gen_random_data_ue(int time_step);
    void set_xaxis(double x);
    void set_yaxis(double y);

    
};

