#include <stdio.h>
#include <string> 
#include <cstring> 
#include <cmath> 
#include <vector>
#include <list>
#include <iostream>
#include <tuple>

#include"HetNet_toc_BS.h"
#include"HetNet_toc_UE.h"
#include"HetNet_toc_Link.h"
#include"HetNet_toc_Sim.h"
#include"HetNet_toc_func.h"

//#define DEBUG

using namespace std;

//class BS():
//class MBS(BS):
//class SBS(BS):
//class UE():
//class Link():
//class Simulator():

//class Simulator;


BS::BS(string BStype_x, int id_x, int cell_color, double x_pos, double y_pos, double z_pos, int cell_id){
        x_position = x_pos;
        y_position = y_pos;
        z_position = z_pos;
        BStype = BStype_x.c_str();
        #ifdef DEBUG
        printf("BS: %s\n", BStype.c_str());
        #endif // DEBUG
        id = id_x;
        cell_color = cell_color;
        cell_id = cell_id;
        
    
        if (BStype == "MBS"){
            TX_power = 34;//46; //dBm
            antenna_gain_after_cable_loss = 15; //dBi
            noise_figure = 5;//5; //dB
            bandwidth = 10; //MHz * pow       
        }else{
            TX_power = 24; //dBm
            antenna_gain_after_cable_loss = 5; //dBi
            noise_figure = 13;//13; //dB
            bandwidth = 10; //MHz * pow       
        }
    
    }
    
tuple<double, double, double> BS::get_xyz(void){
        return make_tuple(x_position, y_position, z_position);
    }
    
string BS::get_type(void){
        return BStype;
    }

string BS::get_name(void){
        string name;
        
        #ifdef DEBUG
        printf("BS name1: %s, %s\n", BStype.c_str(), to_string(id).c_str());
        #endif // DEBUG
        name = BStype + to_string(id);
        #ifdef DEBUG
        printf("BS name: %s\n", name.c_str());
        #endif // DEBUG
        return name;
    }
    

int BS::get_state(void){
        #ifdef DEBUG
        cout << "!HetNet_toc_BS get_state\n";
        printf("id state: %d, %d\n", id, state);
        #endif // DEBUG
        return state;
    }    

void BS::set_state(int x){
        state = x;
    }    
    

double BS::get_TX_power(void){
        return TX_power;
    }
    
double BS::get_antenna_gain(void){
        return antenna_gain_after_cable_loss;
    }
       
double BS::get_noise_figure(void){
        return noise_figure;
    }
    
int BS::get_cell_id(void){
        return cell_id;    
    }


void BS::sim_set_state_darwinian_quad(vector<float> &config_x, int x){
        int tmp;
        if ((config_x[id * 2] == -1.0) && (config_x[id * 2+1] == -1.0)){
            tmp = 1;
        }else if ((config_x[id * 2] == -1.0) && (config_x[id * 2+1] == 1.0)){
            tmp = 3;
        }else if ((config_x[id * 2] == 1.0) && (config_x[id * 2+1] == -1.0)){
            tmp = 5;
        }else{
            tmp = 7;
        }
        
        for (int i=0; i<10; i++){
            config[i] = config_p[tmp][i];
        }
        state = config[x];
        #ifdef DEBUG
        cout << "!HetNet_toc_BS sim_set_state_darwinian_quad\n";
        printf("id tmp x state: %d, %d, %d, %d\n", id, tmp, x, state);
        #endif // DEBUG
        
    }



void BS::sim_set_config_supervised_learning(vector<float> &config_x){

        #ifdef DEBUG
        printf("config_x id, id*2, id*2+1: %d, %d, %d\n", id, id*2, id*2+1);
        printf("config_x.size(): %d\n", config_x.size());
        printf("config_x[0]: %f\n", config_x[0]);
        #endif // DEBUG
        
        double lim = 0.0;//0.5; //0.0

        int tmp;
        if ((config_x[id * 2] <= lim) && (config_x[id * 2+1] <= lim)){
            tmp = 1;
        }else if ((config_x[id * 2] <= lim) && (config_x[id * 2+1] > lim)){
            tmp = 3;
        }else if ((config_x[id * 2] > lim) && (config_x[id * 2+1] <= lim)){
            tmp = 5;
        }else{
            tmp = 7;
        }

        for (int i=0; i<10; i++){
            config[i] = config_p[tmp][i];
        }
        //#ifdef DEBUG
        //cout << "!HetNet_toc_BS sim_set_config_supervised_learning\n";
        //printf("tmp: %d\n", tmp);
        //#endif // DEBUG

}

void BS::sim_set_state_supervised_learning(int x){
        
        state = config[x];
        #ifdef DEBUG
        cout << "!HetNet_toc_BS sim_set_state_supervised_learning\n";
        printf("id x state: %d, %d, %d\n", id, x, state);
        #endif // DEBUG
        
    }

float BS::get_ul_rate_inside_UE(){

        double ul_rate_tmp = 0;
        double dl_rate_tmp = 0;
        for(UE *ue: inside_UE){
            ul_rate_tmp = ul_rate_tmp + ue->ul_rate;
            dl_rate_tmp = dl_rate_tmp + (1.0 - ue->ul_rate);        
        }
        #ifdef DEBUG
        cout << "!HetNet_toc_BS get_ul_rate_inside_UE\n";
        printf("ul_rate_tmp: %f\n", ul_rate_tmp); 
        printf("dl_rate_tmp: %f\n", dl_rate_tmp); 
        #endif // DEBUG
        double ans;
        if ((ul_rate_tmp + dl_rate_tmp) > 0){
            ans = ul_rate_tmp / (ul_rate_tmp + dl_rate_tmp);
        } else {
            ans = 0.5;
        }
        return(ans);
    }

float BS::get_ul_inside_UE(){

        double ul_tmp = 0;
        for(UE *ue: inside_UE){
            ul_tmp = ul_tmp + ue->ul_rate;
        }
        return(ul_tmp);
    }

float BS::get_dl_inside_UE(){

        double dl_tmp = 0;
        for(UE *ue: inside_UE){
            dl_tmp = dl_tmp + (1.0 - ue->ul_rate);
        }
        return(dl_tmp);
    }

    
pair<double, double> BS::get_bs_sentdata_total(){
    
        #ifdef DEBUG
        cout << "!HetNet_toc_BS get_bs_sentdata_total\n";
        printf("sentdata_ul_list.size(): %d\n", sentdata_ul_list.size());      
        printf("sentdata_dl_list.size(): %d\n", sentdata_dl_list.size());      
        #endif // DEBUG
        pair<double, double> ans;
    
        ans.first = 0;
        for(vector<double>::iterator it = sentdata_ul_list.begin(); it != sentdata_ul_list.end(); ++it){
           ans.first += *it;
           #ifdef DEBUG
           printf("ul it:%f\n", *it);
           #endif
        }
        ans.second = 0;
        for(vector<double>::iterator it = sentdata_dl_list.begin(); it != sentdata_dl_list.end(); ++it){
           ans.second += *it;
           #ifdef DEBUG
           printf("dl it:%f\n", *it);
           #endif
        }
        
        #ifdef DEBUG
        printf("ans.first:%f\n", ans.first);
        printf("ans.second:%f\n", ans.second);
        #endif

        //print("sentdata_ul_ans1:"+str(ans1))
        //print("sentdata_dl_ans1:"+str(ans2))
                
        sentdata_ul_list.clear();
        sentdata_dl_list.clear();
        
        return(ans);
    }        


vector<UE *> BS::get_inside_UE(){
        return(inside_UE);
}        


int BS::get_inside_UE_num(){
    return(inside_UE.size());
}

void BS::remove_inside_UE(UE *x){
    #ifdef DEBUG
    cout << "!HetNet_toc_BS remove_inside_UE\n";
    #endif // DEBUG
    for(auto iter = inside_UE.begin(); iter != inside_UE.end(); ++iter){
        #ifdef DEBUG
        cout << "!HetNet_toc_BS remove_inside_UE1\n";
        #endif // DEBUG
        if((*(*iter)).id == (*x).id){
            iter = inside_UE.erase(iter);
            break;
        }
    }
}  

vector<UE *> BS::get_connecting_UE_ul(){
        #ifdef DEBUG
        cout << "!HetNet_toc_BS get_connecting_UE_ul\n";
        #endif // DEBUG

        return(connecting_UE_ul);
}

vector<UE *> BS::get_connecting_UE_dl(){
        return(connecting_UE_dl);   
}     

void BS::remove_connecting_UE_ul(UE *x){
    for(auto iter = connecting_UE_ul.begin(); iter != connecting_UE_ul.end(); ++iter){
        if((*(*iter)).id == (*x).id){
            iter = connecting_UE_ul.erase(iter);
            break;
        }
    }
}

void BS::remove_connecting_UE_dl(UE *x){
    for(auto iter = connecting_UE_dl.begin(); iter != connecting_UE_dl.end(); ++iter){
        if((*(*iter)).id == (*x).id){
            iter = connecting_UE_dl.erase(iter);
            break;
        }
    }
}

bool BS::set_connecting_UE_ul(UE *x){
        //#print("connectin_UE:"+str(self.get_name())+", "+str(len(self.connecting_UE_ul))+", "+str(self.max_antenna_ul)) 
        //!!!!!!!!!!!!!!!!!!! no antenna
        //if (connecting_UE_ul.size() >= max_antenna_ul){
        //    return(false);
        //}
        
        bool tmp_bool = true;
        for(auto iter = connecting_UE_ul.begin(); iter != connecting_UE_ul.end(); ++iter){
            if((*(*iter)).id == (*x).id){
                tmp_bool = false;
            }
        }
        
        if (tmp_bool){
            connecting_UE_ul.push_back(x);
        }
        return(true);
}

bool BS::set_connecting_UE_dl(UE *x){
        //#print("connectin_UE:"+str(self.get_name())+", "+str(len(self.connecting_UE_dl))+", "+str(self.max_antenna_dl))
        //!!!!!!!!!!!!!!!!!!! no antenna
        //if (connecting_UE_dl.size() >= max_antenna_dl){
        //    return(false);
        //}
        
        bool tmp_bool = true;
        for(auto iter = connecting_UE_dl.begin(); iter != connecting_UE_dl.end(); ++iter){
            if((*(*iter)).id == (*x).id){
                tmp_bool = false;
            }
        }
        
        if (tmp_bool){
            connecting_UE_dl.push_back(x);
        }
        return(true);

}


void BS::set_inside_UE(UE *x){
        inside_UE.push_back(x);
}

void BS::set_c_connecting_UE(){

        for (int i=0; i<connecting_UE_ul.size(); i++){
            c_connecting_UE_ul.push_back(connecting_UE_ul[i]);
        }
        for (int i=0; i<connecting_UE_dl.size(); i++){
            c_connecting_UE_dl.push_back(connecting_UE_dl[i]);
        }

}
