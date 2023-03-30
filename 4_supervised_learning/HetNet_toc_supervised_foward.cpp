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

//#define DEBUG

using namespace std;

//class BS():
//class MBS(BS):
//class SBS(BS):
//class UE():
//class Link():
//class Simulator():

//class Simulator;


void getData_foward(char *buff, vector<double>& foward_list){
    printf("buff:%s\n", buff);
    char *token = strtok(buff, " ");
    double num = atof(token);
    #ifdef DEBUG
    printf("First value:  %s\n", token);
    #endif // DEBUG
    foward_list.push_back(num);
    #ifdef DEBUG
    printf("foward_list[0]: %f\n", foward_list[0]);
    #endif // DEBUG

    int i=1;
    while (token != NULL)   {
        //#ifdef DEBUG
        //printf("First value:  %s\n", token);
        //#endif // DEBUG
        //token = strtok(NULL, " ");
        token = strtok(NULL, " ");
        #ifdef DEBUG
        printf("token:  %s\n", token);
        #endif // DEBUG
        if (token == NULL) {
            break;
        }
        num = atof(token);
        foward_list.push_back(num);
        #ifdef DEBUG
        printf("foward_list[%d]: %f\n", i, foward_list[i]);
        #endif // DEBUG
        i= i+1;
    }
}

void getData(char *buff, vector<double>& position_list){
    //char *token = strtok(buff, "\t");
    char *token = strtok(buff, ",");
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
        //token = strtok(NULL, "\t");
        token = strtok(NULL, ",");
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

    if ((x <= 0.01) && (y <= 0.01)){
        return(NULL);
    }

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

int main(int argc, char *argv[])
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

    char folder_addr[] = "./data/data20220920/position_disney_txt.txt";
    vector<double> position_list;

    #ifdef DEBUG
    here = clock();
    printf("!HetNet_toc 0_1, %.2f\n", (double)(here - start)/1000);
    start = here;
    #endif // DEBUG

//exit(0);
    FILE *fp = fopen(folder_addr, "r");
    char buff[10000];
    int ini_step = atoi(argv[2]);
    for (int i=0; i<ini_step; i++){
        //do  {
        //position_list.clear();
        fgets(buff, 10000, (FILE*)fp);
        //printf(buff);
        //getData(buff, position_list);
        //printf("0position_list.size():%d\n", position_list.size());
        
        //} while ((getc(fp)) != EOF);
    }    
    position_list.clear();
    fgets(buff, 10000, (FILE*)fp);
    getData(buff, position_list);
        
    //printf("1position_list.size():%d\n", position_list.size());
//exit(0);
    char folder_learning_input_tmp[] = "./learning_input_tmp.txt";
    FILE *firead = fopen(folder_learning_input_tmp, "r");
    
    char buff_ul_dl[10000];
    char buff_ul_dl_tmp[10000];
    vector<double> ul_dl_rate_vector_tmp;
    vector<float> ul_dl_rate_vector;

    int buff_flag = 0;
    while(fgets(buff_ul_dl, 10000, (FILE*)firead) != NULL){
        copy(begin(buff_ul_dl), end(buff_ul_dl), begin(buff_ul_dl_tmp));
        buff_flag = 1;
    }
    if (buff_flag == 1){
        ul_dl_rate_vector_tmp.clear();
        getData_foward(buff_ul_dl, ul_dl_rate_vector_tmp);
        for (int i=0; i<ul_dl_rate_vector_tmp.size(); i++){
            ul_dl_rate_vector.push_back((float)ul_dl_rate_vector_tmp[i]);
        }
    }

    fclose(firead);
//exit(0);//////////////foward!!!
    char folder_learning_input[] = "./foward_input.txt";
    FILE *fi = fopen(folder_learning_input, "w");
    //char folder_learning_output[] = "./learning_output.txt";
    //FILE *fo = fopen(folder_learning_output, "w");

//exit(0);
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

//exit(0);
    Simulator sim_r = Simulator(position_list, ul_dl_rate_vector, atof(argv[1]));
    Simulator *sim = &sim_r;

//exit(0);

    int cell_color, cell_id, bs_id;

    for (int i=0; i<7; i++){
        cell_color = i;
        cell_id = i;
        bs_id = i;
        BS *bs = new BS("SBS", bs_id, cell_color, x_axis[i], y_axis[i], 10.0, bs_id);
        (*sim).BS_list.push_back(bs);
    }

//exit(0);
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
    printf("position_list.size(): %d\n", position_list.size());
    #endif // DEBUG

    //printf("len(position_list)"+str(len(position_list[0])));
    for (int i=0; i< (position_list.size()/2 -1); i++){
        ue_id = i;
        x_ue = position_list[i*2];
        y_ue = position_list[i*2+1];
        #ifdef DEBUG
        here = clock();
        printf("!HetNet_toc 2_0, %.2f\n", (double)(here - start)/1000);
        start = here;
        printf("x_ue, y_ue: %f, %f\n", x_ue, y_ue);
        #endif // DEBUG
        //print("x_ue"+str(x_ue));
        printf("plot(%f, %f, 'x')\n", x_ue, y_ue);
        t_sbs = find_sbs(sim, x_ue, y_ue);
        #ifdef DEBUG
        here = clock();
        printf("!HetNet_toc 2_1, %.2f\n", (double)(here - start)/1000);
        start = here;
        printf("(*t_sbs).id: %d\n", (*t_sbs).id);
        printf("ue_id: %d\n", ue_id);
        #endif // DEBUG
        int cell_color_tmp;
        if (t_sbs != NULL){
            cell_color_tmp = (*t_sbs).cell_color;
        }else {
            cell_color_tmp = -1;
        }
        UE *ue = new UE(sim, "Ped", ue_id, cell_color_tmp, x_ue, y_ue, 0.0, t_sbs);
        #ifdef DEBUG
        here = clock();
        printf("!HetNet_toc 2_2, %.2f\n", (double)(here - start)/1000);
        start = here;
        #endif // DEBUG
        (*sim).UE_list.push_back(ue);
    }
    
    //exit(0);
    
    //getData(buff, position_list);
    (*sim).execute_sim_get_UE_throughput(position_list, fi);
//exit(0);
    #ifdef DEBUG
    here = clock();
    printf("!HetNet_toc 3, %.2f\n", (double)(here - start)/1000);
    start = here;
    #endif // DEBUG

//    for (int i=0; i<100; i++){
    for (int i=0; i<99; i++){
 
        printf("Step: %d\n", i);
        
        #ifdef DEBUG
        here = clock();
        printf("!HetNet_toc 41, %.2f\n", (double)(here - start)/1000);
        start = here;
        for (UE *ue : (*sim).UE_list){
            printf("(*ue).data_list.size():%d\n", (*ue).data_list.size());
        }
        #endif // DEBUG

        //print("i:"+str(i), flush=True)
        position_list.clear();
        fgets(buff, 10000, (FILE*)fp);
        getData(buff, position_list);
        (*sim).execute_sim_get_UE_throughput(position_list, fi);


        #ifdef DEBUG
        here = clock();
        printf("!HetNet_toc 42, %.2f\n", (double)(here - start)/1000);
        start = here;
        for (UE *ue : (*sim).UE_list){
            printf("(*ue).data_list.size():%d\n", (*ue).data_list.size());
        }
        #endif // DEBUG

        (*sim).sum_UE_throughput();
        //sim.print_buffer_num()
   
        #ifdef DEBUG
        here = clock();
        printf("!HetNet_toc 43, %.2f\n", (double)(here - start)/1000);
        start = here;
        for (UE *ue : (*sim).UE_list){
            printf("(*ue).data_list.size():%d\n", (*ue).data_list.size());
        }
        #endif // DEBUG
//exit(0);
    }

    #ifdef DEBUG
    here = clock();
    printf("!HetNet_toc 5, %.2f\n", (double)(here - start)/1000);
    start = here;
    #endif // DEBUG

    //sim.print_interf("log_Disney")

    return 0;
}


