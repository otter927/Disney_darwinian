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




void getData_sinrmap(vector<vector<vector<double>>> & sinr_map_all){

    FILE *fpmap;
    vector<double> sinr_map1;
    vector<vector<double>> sinr_map2;

    #ifdef DEBUG
    printf("HetNet_toc_random getData_sinrmap!\n");
    #endif // DEBUG

    fpmap = fopen("sinr_map.txt", "r");
    char buffmap[90000];
    for (int i=0; i<256; i++){
        fgets(buffmap, 90000, (FILE*)fpmap);

        char *token = strtok(buffmap, " ");
        double num = atof(token);
    
    
        #ifdef DEBUG
        printf("First value:  %s\n", token);
        #endif // DEBUG
        sinr_map1.push_back(num);
        #ifdef DEBUG
        printf("sinr_map1[0]: %f\n", sinr_map1[0]);
        #endif // DEBUG

        int count=1;
        int y_count = 0;
        while (token != NULL)   {
            token = strtok(NULL, " ");
            #ifdef DEBUG
            printf("token:  %s\n", token);
            #endif // DEBUG
            if (token == NULL) {
                break;
            }
            num = atof(token);
            sinr_map1.push_back(num);
            #ifdef DEBUG
            //printf("num: %f\n", num);
            printf("sinr_map1[%d]: %f\n", count, sinr_map1[count]);
            printf("count: %d\n", count);
            #endif // DEBUG
            count= count+1;
            //if (count >= 70){
            if (count >= 90){
                sinr_map2.push_back(sinr_map1);
                sinr_map1.clear();
                y_count = y_count + 1;
                #ifdef DEBUG
                printf("y_count: %d\n", y_count);
                #endif // DEBUG
                count = 0;
            }
        }
        sinr_map_all.push_back(sinr_map2);
        
    }    

    //#ifdef DEBUG
    printf("sinr_map_all[0][0].size():%d\n", sinr_map_all[0][0].size());
    printf("sinr_map_all[0].size():%d\n", sinr_map_all[0].size());
    printf("sinr_map_all.size():%d\n", sinr_map_all.size());
    //#endif // DEBUG

    //exit(0);
}

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
        #ifdef DEBUG
        printf("First value:  %s\n", token);
        #endif // DEBUG
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
    vector<double> foward_list_tmp;
    vector<vector<double>> foward_list;

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
        //position_list.clear();
        //do  {
        fgets(buff, 10000, (FILE*)fp);
        //printf(buff);
        //getData(buff, position_list);
        //} while ((getc(fp)) != EOF);
    }    
    position_list.clear();
    fgets(buff, 10000, (FILE*)fp);
    getData(buff, position_list);

//exit(0);

    vector<char *> buff_foward_list;
    vector<FILE *> ffoward_list;
    for (int i=0; i<atoi(argv[3]); i++){
        string file_foward_output = "foward_output";
        file_foward_output +=  to_string(i);
        file_foward_output += ".txt";
        FILE *ffoward = fopen(file_foward_output.c_str(), "r");
        ffoward_list.push_back(ffoward);
        char buff_foward[10000];
        buff_foward_list.push_back(buff_foward);
    }

    vector<vector<vector<double>>> sinr_map_all;
    getData_sinrmap(sinr_map_all);


    //vector<char *> buff_foward_list;
    //string file_foward_output = "foward_output";
    //file_foward_output +=  to_string(0);
    //file_foward_output += ".txt";
    //FILE *ffoward0 = fopen(file_foward_output.c_str(), "r");
    //char buff_foward0[4000];

    //file_foward_output = "foward_output";
    //file_foward_output +=  to_string(1);
    //file_foward_output += ".txt";
    //FILE *ffoward1 = fopen(file_foward_output.c_str(), "r");
    //char buff_foward1[4000];





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

    char folder_learning_input[] = "./learning_input.txt";
    FILE *fi = fopen(folder_learning_input, "w");
    char *num;

    vector<FILE *> fo_list;
    for (int i=0; i<atoi(argv[3]); i++){
        string folder_learning_output = "./learning_output";
        folder_learning_output += to_string(i);
        folder_learning_output += ".txt";
        FILE *fo = fopen(folder_learning_output.c_str(), "w");
        fo_list.push_back(fo);
    }
//exit(0);
 
 //exit(0);       
//    vector<FILE *> fo_list;
//    char folder_learning_output0[] = "./learning_output0.txt";
//    FILE *fo0 = fopen(folder_learning_output0, "w");
//    fo_list.push_back(fo0);
    
//    char folder_learning_output1[] = "./learning_output1.txt";
//    FILE *fo1 = fopen(folder_learning_output1, "w");
//    fo_list.push_back(fo1);

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

    Simulator sim_r = Simulator(position_list, ul_dl_rate_vector, atof(argv[1]));
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
    printf("position_list.size(): %d\n", position_list.size());
    #endif // DEBUG

//exit(0);

    //printf("len(position_list)"+str(len(position_list[0])));
    printf("position_list.size(): %d \n", position_list.size());
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



    buff_foward_list.clear();
    char *buff_foward;
    for (int i=0; i<atoi(argv[3]); i++){
        buff_foward = new char[10000];
        fgets(buff_foward, 10000, (FILE*)ffoward_list[i]);
        //printf("buff_foward:%d:%s\n", i, buff_foward);
        buff_foward_list.push_back(buff_foward);
    }
    
//exit(0);       
    
//    buff_foward_list.clear();
////    fgets(buff_foward0, 4000, (FILE*)ffoward0);
//    char buff_foward0[4000];
//    fgets(buff_foward0, 4000, (FILE*)ffoward_list[0]);
//    buff_foward_list.push_back(buff_foward0);
////    fgets(buff_foward1, 4000, (FILE*)ffoward1);
//    char buff_foward1[4000];
//    fgets(buff_foward1, 4000, (FILE*)ffoward_list[1]);
//    buff_foward_list.push_back(buff_foward1);


    foward_list.clear();
    //printf("atoi(argv[3]):%d\n", atoi(argv[3]));
    for (int i=0; i<atoi(argv[3]); i++){
//    for (int i=0; i<2; i++){
        foward_list_tmp.clear();
        //printf("buff_foward_list[%d]:%s\n", i, buff_foward_list[i]);
        getData_foward(buff_foward_list[i], foward_list_tmp);
        //} while ((getc(fp)) != EOF);

        #ifdef DEBUG
        printf("foward_list_tmp.size():%d\n", foward_list_tmp.size());
        for (int i=0; i<foward_list_tmp.size(); i++){
            printf("foward_list_tmp:%f\n", foward_list_tmp[i]);
        }
        #endif // DEBUG
        foward_list.push_back(foward_list_tmp);
    }

//exit(0);

    //fgets(buff, 4000, (FILE*)fp);
    //getData(buff, position_list);
    (*sim).execute_sim_random(position_list, sinr_map_all);

    #ifdef DEBUG
    here = clock();
    printf("!HetNet_toc 3, %.2f\n", (double)(here - start)/1000);
    start = here;
    #endif // DEBUG

//    for (int i=0; i<100; i++){ 
    for (int i=0; i<99; i++){ 
 
        #ifdef DEBUG
        here = clock();
        printf("!HetNet_toc 41, %.2f\n", (double)(here - start)/1000);
        start = here;
        for (UE *ue : (*sim).UE_list){
            printf("(*ue).data_list.size():%d\n", (*ue).data_list.size());
        }
        printf("!HetNet_toc 411, %.2f\n", (double)(here - start)/1000);
        #endif // DEBUG


        buff_foward_list.clear();
        for (int i=0; i<atoi(argv[3]); i++){
            char buff_foward[10000];
            fgets(buff_foward, 10000, (FILE*)ffoward_list[i]);
            buff_foward_list.push_back(buff_foward);
        }

//        buff_foward_list.clear();
//    //    fgets(buff_foward0, 4000, (FILE*)ffoward0);
//        char buff_foward0[4000];
//        fgets(buff_foward0, 4000, (FILE*)ffoward_list[0]);
//        buff_foward_list.push_back(buff_foward0);
//    //    fgets(buff_foward1, 4000, (FILE*)ffoward1);
//        char buff_foward1[4000];
//        fgets(buff_foward1, 4000, (FILE*)ffoward_list[1]);
//        buff_foward_list.push_back(buff_foward1);


        foward_list.clear();
        for (int i=0; i<atoi(argv[3]); i++){
        //for (int i=0; i<2; i++){
            foward_list_tmp.clear();
            getData_foward(buff_foward_list[i], foward_list_tmp);
            //} while ((getc(fp)) != EOF);

            #ifdef DEBUG
            printf("foward_list_tmp.size():%d\n", foward_list_tmp.size());
            for (int i=0; i<foward_list_tmp.size(); i++){
                printf("foward_list_tmp:%f\n", foward_list_tmp[i]);
            }
            #endif // DEBUG
            foward_list.push_back(foward_list_tmp);
        }
        #ifdef DEBUG
        printf("foward_list.size():%d\n", foward_list.size());
        printf("foward_list[0].size():%d\n", foward_list[0].size());
        #endif // DEBUG

//exit(0);

        //print("i:"+str(i), flush=True)
        position_list.clear();
        fgets(buff, 10000, (FILE*)fp);
        getData(buff, position_list);
        (*sim).execute_sim_random(position_list, sinr_map_all);


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


