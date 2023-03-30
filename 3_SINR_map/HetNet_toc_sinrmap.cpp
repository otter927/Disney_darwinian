#include <stdio.h>
#include <stdlib.h>
#include <string> 
#include <cstring> 
#include <cmath> 
#include <vector>
#include <list>
#include <iostream>
#include <cstdlib>
#include <time.h>

#include"HetNet_toc_BS.h"
#include"HetNet_toc_UE.h"
#include"HetNet_toc_Link.h"
#include"HetNet_toc_Sim.h"
#include"HetNet_toc_func.h"

#define DEBUG

using namespace std;

//class BS():
//class MBS(BS):
//class SBS(BS):
//class UE():
//class Link():
//class Simulator():

//class Simulator;


void getData(char *buff, vector<double>& position_list){
    char *token = strtok(buff, "\t");
    double num = atof(token);
    #ifdef DEBUG
    printf("First value:  %s\n", token);
    #endif // DEBUG
    position_list.push_back(num);
    #ifdef DEBUG
    printf("position_list[0]: %f\n", position_list[0]);
    #endif // DEBUG

    int i=1;
    while (token != NULL)   {
        #ifdef DEBUG
        printf("First value:  %s\n", token);
        #endif // DEBUG
        token = strtok(NULL, "\t");
        #ifdef DEBUG
        printf("token:  %s\n", token);
        #endif // DEBUG
        if (token == NULL) {
            break;
        }
        num = atof(token);
        position_list.push_back(num);
        #ifdef DEBUG
        printf("position_list[%d]: %f\n", i, position_list[i]);
        #endif // DEBUG
        i= i+1;
    }
}

BS *find_sbs(Simulator *sim, double x, double y){

    double bs_dis;
    double min_dis = 10000;
    BS * min_bs;
    for (BS *bs : (*sim).BS_list){
        //print("x"+str(type(x)))
        //print("bs"+str(type(bs_x_axis[i])))
        bs_dis = calc_d((*bs).get_xyz(), make_tuple(x, y, 0.0));
        if (bs_dis < min_dis){
            min_dis = bs_dis;
            min_bs = bs;
        }
    }

    #ifdef DEBUG
    printf("(*min_bs).id: %d\n", (*min_bs).id);
    #endif // DEBUG
    
    return(min_bs);
}

int main()
{


    #ifdef DEBUG
    clock_t start, here;   
    start = clock();
    #endif // DEBUG


    #ifdef DEBUG
    here = clock();
    printf("!HetNet_toc 0, %.2f\n", (double)(here - start)/1000);
    start = here;
    #endif // DEBUG

    char folder_addr[] = "./data/position_disney_txt.txt";
    
    #ifdef DEBUG
    here = clock();
    printf("!HetNet_toc 0_1, %.2f\n", (double)(here - start)/1000);
    start = here;
    #endif // DEBUG

    

    double y_axis[8];
    double x_axis[8];

    y_axis[0] = -40576.0916;
    x_axis[0] = 4292.7195;

    y_axis[1] = -40645.3577;
    x_axis[1] = 4439.9288;

    y_axis[2] = -40811.6655;
    x_axis[2] = 4643.7977;

    y_axis[3] = -40895.0254;
    x_axis[3] = 4338.1594;

    y_axis[4] = -41033.8040;
    x_axis[4] = 4123.1142;

    y_axis[5] = -40784.2280;
    x_axis[5] = 4032.4274;

    y_axis[6] = -40479.0878;
    x_axis[6] = 4145.4995;

    y_axis[7] = -40728.6466;
    x_axis[7] = 4270.1503;

    printf("plot(%f, %f, 'o')\n", x_axis[0], y_axis[0]);
    printf("plot(%f, %f, 'o')\n", x_axis[1], y_axis[1]);
    printf("plot(%f, %f, 'o')\n", x_axis[2], y_axis[2]);
    printf("plot(%f, %f, 'o')\n", x_axis[3], y_axis[3]);
    printf("plot(%f, %f, 'o')\n", x_axis[4], y_axis[4]);
    printf("plot(%f, %f, 'o')\n", x_axis[5], y_axis[5]);
    printf("plot(%f, %f, 'o')\n", x_axis[6], y_axis[6]);
    printf("plot(%f, %f, 'o')\n", x_axis[7], y_axis[7]);

    Simulator sim_r = Simulator();
    Simulator *sim = &sim_r;


    int cell_color, cell_id, bs_id;

    for (int i=0; i<7; i++){
        cell_color = i;
        cell_id = i;
        bs_id = i;
        BS *bs = new BS("SBS", bs_id, cell_color, x_axis[i], y_axis[i], 10.0, bs_id);
        (*sim).BS_list.push_back(bs);
    }

    int id = 7;
    cell_color = id;
    cell_id = id;
    bs_id = id;
    BS *bs = new BS("MBS", bs_id, cell_color, x_axis[id], y_axis[id], 35.0, bs_id);
    (*sim).BS_list.push_back(bs);

    int ue_id;
    double x_ue, y_ue;
    BS * t_sbs;

    #ifdef DEBUG
    here = clock();
    printf("!HetNet_toc 2, %.2f\n", (double)(here - start)/1000);
    start = here;
    #endif // DEBUG

    ue_id = 0;
    x_ue = 4000;
    y_ue = -41100;
    #ifdef DEBUG
    here = clock();
    printf("!HetNet_toc 2_0, %.2f\n", (double)(here - start)/1000);
    start = here;
    printf("x_ue, y_ue: %f, %f\n", x_ue, y_ue);
    #endif // DEBUG
    //print("x_ue"+str(x_ue));
    printf("plot(%f, %f, 'x')\n", x_ue, y_ue);
    #ifdef DEBUG
    here = clock();
    printf("!HetNet_toc 2_1, %.2f\n", (double)(here - start)/1000);
    start = here;
    printf("ue_id: %d\n", ue_id);
    #endif // DEBUG
    UE *ue = new UE(sim, "Ped", ue_id, cell_color, x_ue, y_ue, 0.0, bs);
    #ifdef DEBUG
    here = clock();
    printf("!HetNet_toc 2_2, %.2f\n", (double)(here - start)/1000);
    start = here;
    #endif // DEBUG
    (*sim).UE_list.push_back(ue);

    (*sim).execute_sinrmap();



    //sim.print_interf("log_Disney")

    return 0;
}


