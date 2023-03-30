#include <stdio.h>
#include <stdlib.h>
#include <string> 
#include <cstring> 
#include <cmath> 
#include <vector>
#include <list>
#include <iostream>
#include <cstdlib>

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
    char *token = strtok(buff, ",");
    double num = atof(token);
    //printf("First value:  %s\n", token);
    position_list.push_back(num);

    while (token != NULL)   {
        //printf("First value:  %s\n", token);
        token = strtok(NULL, ",");
        if (token == NULL) {
            break;
        }
        num = atof(token);
        position_list.push_back(num);
    }
}

BS *find_sbs(Simulator *sim_x, double x, double y){

    double bs_dis;
    double min_dis = 10000;
    BS * min_bs;
    for (BS *bs : BS_list){
        //print("x"+str(type(x)))
        //print("bs"+str(type(bs_x_axis[i])))
        bs_dis = calc_d((*bs).get_xyz(), make_tuple(x, y, 0.0));
        if bs_dis < min_dis:
            min_dis = bs_dis;
            min_bs = bs
    }
    
    return(min_bs)
}

int main()
{

    #ifdef DEBUG
    cout << "!HetNet_toc0\n";
    #endif // DEBUG

    char folder_addr[] = "./data/position_disney.csv";
    vector<double> position_list;

    #ifdef DEBUG
    cout << "!HetNet_toc0_1\n";
    #endif // DEBUG

    FILE *fp = fopen(folder_addr, "r");
    //do  {
    char buff[1024];
    fgets(buff, 1024, (FILE*)fp);
    //printf(buff);
    getData(buff, position_list);
    //} while ((getc(fp)) != EOF);

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

    int cell_color, cell_id, bs_id

    for (int i=0; i<8; i++){
        cell_color = i;
        cell_id = i;
        bs_id = i;
        BS bs_r = new BS("SBS", bs_id, cell_color, x_axis[i], y_axis[i], 10.0, bs_id);
        BS *bs = &bs_r;
        (*sim).BS_list.push_back(bs);
    }

    int id = 7;
    cell_color = id;
    cell_id = id;
    bs_id = id;
    BS bs_r = new BS("MBS", bs_id, cell_color, x_axis[i], y_axis[i], 35.0, bs_id);
    BS *bs = &bs_r;
    (*sim).BS_list.push_back(bs);

    int ue_id
    double x_ue, y_ue;
    BS * t_sbs;

    //printf("len(position_list)"+str(len(position_list[0])));
    for (int i=0; i< position_list.size()/2; i++){
        ue_id = i;
        x_ue = position_list[i*2];
        y_ue = position_list[i*2+1];
        //print("x_ue"+str(x_ue));
        t_sbs = find_sbs(sim, x_axis, y_axis);
        UE ue_r = UE(sim, "Ped", ue_id, (*t_sbs).cell_color, x_ue, y_ue, 0.0, t_sbs);
    }

    getData(buff, position_list);
    (*sim).execute_sim_darwinian(position_list);

    for (int i=0; i<268; i++){
 
        print("i:"+str(i), flush=True)
        sim.execute_sim_darwinian(position_list)


        ans1_1, ans1_2, ans1_3, ans2_1, ans2_2, ans2_3, ans3_1, ans3_2, ans3_3, ans4_1, ans4_2, ans4_3, ans5_1, ans5_2, ans5_3, ans6_1, ans6_2, ans6_3 = sim.sum_UE_throughput()
        print("median ul throughput:"+str(ans1_1)+", "+str(ans1_2)+", "+str(ans1_3)+", dl throughput:"+str(ans2_1)+", "+str(ans2_2)+", "+str(ans2_3)+", "+"median ul mbs throughput:"+str(ans3_1)+", "+str(ans3_2)+", "+str(ans3_3)+", dl mbsthroughput:"+str(ans4_1)+", "+str(ans4_2)+", "+str(ans4_3)+", " +"median ul sbs throughput:"+str(ans5_1)+", "+str(ans5_2)+", "+str(ans5_3)+", dl sbs throughput:"+str(ans6_1)+", "+str(ans6_2)+", "+str(ans6_3))
        //sim.print_buffer_num()
   
    
    }

    //sim.print_interf("log_Disney")


    #ifdef DEBUG
    cout << "!HetNet_toc1\n";
    #endif // DEBUG

    Simulator sim_r = Simulator();
    Simulator *sim = &sim_r;

    #ifdef DEBUG
    cout << "!HetNet_toc2\n";
    #endif // DEBUG

    string BStypeM("MBS");
    #ifdef DEBUG
    printf("BS1: %s\n", BStypeM.c_str());
    #endif // DEBUG
    BS bs1_r = BS(BStypeM, 0, 0, 1000.0, 500.0, 35.0, 0);
    BS *bs1 = &bs1_r;
    string BStypeS("SBS");
    BS bs2_r = BS(BStypeS, 1, 0, 1000.0, 2500.0, 35.0, 1);
    BS *bs2 = &bs2_r;
    string UEtype("Ped");
    UE ue1_r = UE(sim, UEtype, 0, 0, 1000.0, 490.0, 0.0, bs1);
    UE *ue1 = &ue1_r;
    UE ue2_r = UE(sim, UEtype, 1, 0, 1000.0, 2510.0, 0.0, bs1);
    UE *ue2 = &ue2_r;

    Link link1_r = Link(sim, bs1, ue1, 0);
    Link *link1 = &link1_r;    
    Link link2_r = Link(sim, bs2, ue2, 0);
    Link *link2 = &link2_r;    
    
    #ifdef DEBUG
    cout << "!HetNet_toc3\n";
    #endif // DEBUG


    (*sim).BS_list.push_back(bs1);
    (*sim).BS_list.push_back(bs2);
    (*sim).UE_list.push_back(ue1);
    (*sim).UE_list.push_back(ue2);
    (*sim).Link_list.push_back(link1);
    (*sim).Link_list.push_back(link2);
    
    #ifdef DEBUG
    cout << "!HetNet_toc4\n";
    #endif // DEBUG

    (*sim).execute_sim_darwinian(position_list);

    #ifdef DEBUG
    cout << "!HetNet_toc5\n";
    #endif // DEBUG

    (*sim).execute_sim_darwinian(position_list);

    #ifdef DEBUG
    cout << "!HetNet_toc6\n";
    #endif // DEBUG
    return 0;
}


