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

int link_id_max=0;

Link::Link(Simulator *sim_x, BS *lbs, UE *lue, int direction_x){
        sim = sim_x;
        link_bs = lbs;
        link_ue = lue;
        direction = direction_x;    
        id = link_id_max;
        link_id_max = link_id_max + 1;
    }

bool Link::is_active(void){
        //#print("is_active: sender:"+str(self.get_s().get_name())+"reciever:"+str(self.get_d().get_name()))

        #ifdef DEBUG
        cout << "!HetNet_toc_Link is_active\n";
        #endif // DEBUG

        if (direction == DL){
            //#print("config id D"+str(self.get_s().get_config_id()))
            if ((*link_bs).get_state() == 1){ //UL:0, DL:1
                return true;
            }else{
                return false;
            }
        }else{
            //#print("config id U"+str(self.get_d().get_config_id()))
            if ((*link_bs).get_state() == 0){ //UL:0, DL:1
                return true;
            } else {
                return false;
            }
        }
    }
    
BS *Link::get_bs(void){
        return link_bs;
    }

UE *Link::get_ue(void){
        return link_ue;
    }

int Link::get_direction(void){
        return direction;
    }
    
void Link::set_capacity(double c){
        capacity = c;
    }

void Link::set_sinr(double s){
        sinr = s;
    }

double Link::get_capacity(void){
        //#print("capacity:"+str(self.capacity)+", "+str(self.get_bs().get_name())+", "+str(self.get_ue().get_name()))
        return(capacity);
}

double Link::get_sinr(void){
        return(sinr);
}

void Link::consump_capacity(double x){
        capacity = capacity -x;
}
        
void Link::change_bs(BS *x){
        link_bs = x;
}

