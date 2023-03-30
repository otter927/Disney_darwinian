#include <stdio.h>
#include <string> 
#include <cstring> 
#include <cmath> 
#include <vector>
#include <list>
#include <iostream>
#include <tuple>
#include<iostream>
#include<iterator>
#include<random>
#include<algorithm>
#include <time.h>

#include"HetNet_toc_BS.h"
#include"HetNet_toc_UE.h"
#include"HetNet_toc_Link.h"
#include"HetNet_toc_Sim.h"
#include"HetNet_toc_func.h"

#include "darwinian_rbm_rap.h"

//#define DEBUG

using namespace std;

//class BS():
//class MBS(BS):
//class SBS(BS):
//class UE():
//class Link():
//class Simulator():

//class Simulator;

    
Simulator::Simulator(vector<double> position_list){
        arrival_rate = 0.1;
        time_step = 0;
        
        random_device rd; // uniformly-distributed integer random number generator
        double lamda = 0.5; //0.5, 1.0; 10.0; //0.1, 0.3, 0.5

        for (int i=0; i<(position_list.size()/2-1); i++){
            mt19937 rng_ul(rd()); // mt19937: Pseudo-random number generation
            rand_pointer_ul.push_back(rng_ul);
            exponential_distribution<double> exp_ul(lamda);
            expp_ul.push_back(exp_ul);

            mt19937 rng_dl(rd()); // mt19937: Pseudo-random number generation
            rand_pointer_dl.push_back(rng_dl);
            exponential_distribution<double> exp_dl(lamda);
            expp_dl.push_back(exp_dl);
        }

 
    }
        
    
double Simulator::path_loss(BS *lbs, UE *lue, int direction){ //3GPP, LOS, d in km
        double d, ans;
        string s_t, r_t;

        //#ifdef DEBUG
        //cout << "!HetNet_toc_Sim path_loss1\n";
        //#endif // DEBUG

        d = calc_d((*lbs).get_xyz(), (*lue).get_xyz()) / 1000;

        //#ifdef DEBUG
        //cout << "!HetNet_toc_Sim path_loss2\n";
        //#endif // DEBUG

        if (d<= 0.01){
            d = 0.01;
        }
        //#ifdef DEBUG
        //printf("d2: %lf", d);
        //#endif // DEBUG
        
       
        if ((*lbs).get_type() == "MBS"){
            ans = 103.4+24.2 * log10(d);
            //#ans = 131.1+42.8 * log10(d) #NLOS
        } else if ((*lbs).get_type() == "SBS"){
            //#print("SBS-UE")
            ans = 103.8 + 20.9 * log10(d);
            //#ans = 145.4+37.5 * log10(d) #NLOS
        }
                
        return ans;
    }
    
    
double Simulator::shadowing(BS *lbs, UE *lue, int direction){
        int shadowing_MBS_MBS = 8; //#dB
        int shadowing_UE_MBS = 8;
        int shadowing_SBS_UE = 10;
        int shadowing_UE_UE = 12;
        int shadowing_MBS_SBS = 6;
        int shadowing_SBS_SBS = 6;

        //#ifdef DEBUG
        //printf("d2: %d\n", (*lbs).id);
        //printf("d2: %f\n", (*lbs).x_position);
        //printf("d2: %s\n", (*lbs).BStype.c_str());
        //cout << "!HetNet_toc_Sim shadowing1\n";
        //#endif // DEBUG
        if ((*lbs).get_type() == "MBS"){
            //#ifdef DEBUG
            //cout << "!HetNet_toc_Sim shadowing1a\n";
            //#endif // DEBUG
            return shadowing_UE_MBS;
            }
        if ((*lbs).get_type() == "SBS"){
            //#ifdef DEBUG
            //cout << "!HetNet_toc_Sim shadowing1b\n";
            //#endif // DEBUG
            return shadowing_SBS_UE;
            }
    }


double Simulator::signal(BS *lbs, UE *lue, int direction){

        double ans1, ans2, ans3, ans4, ans5, ans6, ans7, ans;

        //#ifdef DEBUG
        //cout << "!HetNet_toc_Sim signal1\n";
        //#endif // DEBUG

        if (direction == 0){ //UL:0, DL:1
            ans1 = (*lue).get_TX_power();
            //#ifdef DEBUG
            //cout << "!HetNet_toc_Sim signal1a1\n";
            //#endif // DEBUG
            ans2 = (*lbs).get_antenna_gain();
            //#ifdef DEBUG
            //cout << "!HetNet_toc_Sim signal1a2\n";
            //#endif // DEBUG
            ans6 = (*lue).get_antenna_gain();
            //#ifdef DEBUG
            //cout << "!HetNet_toc_Sim signal1a3\n";
            //#endif // DEBUG
            ans5 = (*lbs).get_noise_figure();
            //#ifdef DEBUG
            //cout << "!HetNet_toc_Sim signal1a4\n";
            //#endif // DEBUG
            ans7 = (*lue).get_noise_figure();
            //#ifdef DEBUG
            //cout << "!HetNet_toc_Sim signal1a5\n";
            //#endif // DEBUG
            ans4 = shadowing(lbs, lue, direction);
            //#ifdef DEBUG
            //cout << "!HetNet_toc_Sim signal1a6\n";
            //#endif // DEBUG
            ans3 = path_loss(lbs, lue, direction);       
        }else{
            ans1 = (*lbs).get_TX_power();
            //#ifdef DEBUG
            //cout << "!HetNet_toc_Sim signal1b1\n";
            //#endif // DEBUG
            ans2 = (*lue).get_antenna_gain();
            //#ifdef DEBUG
            //cout << "!HetNet_toc_Sim signal1b2\n";
            //#endif // DEBUG
            ans6 = (*lbs).get_antenna_gain();
            //#ifdef DEBUG
            //cout << "!HetNet_toc_Sim signal1b3\n";
            //#endif // DEBUG
            ans5 = (*lue).get_noise_figure();
            //#ifdef DEBUG
            //cout << "!HetNet_toc_Sim signal1b4\n";
            //#endif // DEBUG
            ans7 = (*lbs).get_noise_figure();
            //#ifdef DEBUG
            //cout << "!HetNet_toc_Sim signal1b5\n";
            //#endif // DEBUG
            ans4 = shadowing(lbs, lue, direction);
            //#ifdef DEBUG
            //cout << "!HetNet_toc_Sim signal1b6\n";
            //#endif // DEBUG
            ans3 = path_loss(lbs, lue, direction);        
        }

        
        //#ifdef DEBUG
        //printf("TX_power: %lf", ans1);
        //printf("antenna gain db: %lf", ans2);
        //printf("antenna gain w %lf:", d2w(ans2));
        //printf("path loss db %lf:", ans3);
        //printf("path loss w %lf:", d2w(ans3));
        //printf("shadowing db %lf:", ans4);
        //printf("shadowing w %lf:", d2w(ans4));
        //printf("noise figure %lf:", ans5);
        //#endif // DEBUG

        ans = ans1 + ans2 + ans6 - ans5 - ans7 - ans4 - ans3;
        //#print(str(s.get_name())+","+str(d.get_name())+", power, gain, noise, pathl, shad, signal, dis:"+str(ans1)+","+str(ans2)+","+str(ans5)+","+str(ans4)+","+str(ans3)+","+str(ans)+","+str(calc_d(s.get_xyz(), d.get_xyz())))
        //#print("signal db:" + str(ans))
        //#ans = s.get_TX_power() * d2w(s.get_antenna_gain()) * d2w(self.path_loss(s, d)) * d2w(self.shadowing(s, d))
        //#http://www.rf-world.jp/bn/RFW09/samples/p013-014.pdf
        //#http://www.mobile.ecei.tohoku.ac.jp/lecture/wireless/wireless_05.pdf
        //#if string == "interf":
        //#print(string+":"+str(ans1)+","+str(ans2)+","+str(ans6)+",,"+str(ans5)+","+str(ans7)+","+str(ans4)+","+str(ans3)+","+str(ans)+","+str(calc_d(s.get_xyz(), d.get_xyz())))
        //#print(string+":"+str(ans))
        
        #ifdef DEBUG
        cout << "!HetNet_toc_Sim signal2\n";
        #endif // DEBUG

        
        return d2w(ans);
        
    }      

        

double Simulator::capacity_calculation(){


        //#3GPP
        
//#        signal(sender, reciever) = sender.get_TX_power() * d2w(sender.get_antenna_gain()) * d2w(path_loss(sender, reciever) * d2w(shadowing(sender, reciever))
     
//#        sinr_upper = signal(s1, r1)
        
//#        interf = 0
//#        for s in all_signals:
//#            interf += signal(s, r1)

//#        sinr_bottom = interf + d2w(reciever.noise(r1))

        //#http://www.mobile.ecei.tohoku.ac.jp/intro/pdf/07_digital.pdf
        
        //#need signal list up
        
        //#round robin
        //#proportional fairness
        
        //#lambda poassion?
        //#UPT

        //######

        double noise_floor = -108;  //#dBm    #Presentation of Specification to TSG or WG - 3GPP
        int i;
        int num_SINR = 0;
        double sinr_upper, interf_tmp;
        //double sinr_upper_db, interf_tmp_db;
        double interf;
        //double interf_db;
        list<BS *> interf_bs_list;
        list<int> interf_bs_cell_list;
        double noise_tmp;
        double noise_tmp_db;
        double sinr_bottom, sinr;
        //double sinr_bottom_db, sinr_db;
        double capacity;
        double bandwidth = 10.0;
        
                
        #ifdef DEBUG
        cout << "!HetNet_toc_Sim capacity_calculation1\n";
        printf("Link_list vector: %d\n", Link_list.size());
        #endif // DEBUG
        
        for (Link *i : Link_list) {        
         //for (i = 1; i <= sizeof(self.Link_list) / sizeof(self.Link_list[0]); i++){
            //#print("Link_list:"+str(i.get_s().get_name())+", "+str(i.get_d().get_name())+", "+str(i.is_active()))

            #ifdef DEBUG
            cout << "!HetNet_toc_Sim capacity_calculation2\n";
            printf("Link, %d\n", (*i).id);
            #endif // DEBUG

            if ((*i).is_active() == true){
                //#ifdef DEBUG
                //printf("sinr_upper0\n");
                ////printf("sinr_upper_db1: %f\n", sinr_upper_db);
                //#endif // DEBUG
                sinr_upper = signal((*i).get_bs(), (*i).get_ue(), (*i).get_direction());
                //#print("tmp:"+str(w2d(sinr_upper))+", "+str(sinr_upper_db))
                //#ifdef DEBUG
                //printf("sinr_upper1: %f\n", sinr_upper);
                ////printf("sinr_upper_db1: %f\n", sinr_upper_db);
                //#endif // DEBUG


                noise_tmp_db = noise_floor;
                noise_tmp = d2w(noise_tmp_db);
                sinr_bottom = noise_tmp; //+ interf;


                sinr = sinr_upper/sinr_bottom;
                //sinr_db = sinr_upper_db - sinr_bottom_db;
                
                #ifdef DEBUG
                printf("SINR db: %s, %s, %f, %e\n", (*(*i).get_bs()).get_name().c_str(), (*(*i).get_ue()).get_name().c_str(), w2d(sinr), sinr);
                printf("bandwidth: %f\n", bandwidth);
                #endif // DEBUG
               
                capacity = bandwidth * log2(1.0 + sinr); //!!!!!!!!!!!!!!!log2 kokodake

                #ifdef DEBUG
                cout << "!HetNet_toc_Sim capacity_calculation4\n";
                printf("capacity1: %e, %f, %e\n", capacity, bandwidth, log2(1.0+sinr));
                #endif // DEBUG

                capacity = 0.01 * 0.1 * capacity; //#10ms 1subframe
                
                capacity = capacity * 100; //####set 1 timestep -> 1s
                //##print("capacity:"+str(capacity))
                
                (*i).set_capacity(capacity);
                
                #ifdef DEBUG
                cout << "!HetNet_toc_Sim capacity_calculation5\n";
                printf("capacity2: %e\n", capacity);
                #endif // DEBUG
                
            } else {
                #ifdef DEBUG
                cout << "!HetNet_toc_Sim else\n";
                #endif // DEBUG
                (*i).set_capacity(0);
            }
            
        #ifdef DEBUG
        cout << "!HetNet_toc_Sim num_SINR\n";
        #endif // DEBUG
        //##print("num_SINR:"+str(self.time_slot)+", "+str(num_SINR))
        
        }
    }            


double Simulator::capacity_calculation2(){


        //#3GPP
        
//#        signal(sender, reciever) = sender.get_TX_power() * d2w(sender.get_antenna_gain()) * d2w(path_loss(sender, reciever) * d2w(shadowing(sender, reciever))
     
//#        sinr_upper = signal(s1, r1)
        
//#        interf = 0
//#        for s in all_signals:
//#            interf += signal(s, r1)

//#        sinr_bottom = interf + d2w(reciever.noise(r1))

        //#http://www.mobile.ecei.tohoku.ac.jp/intro/pdf/07_digital.pdf
        
        //#need signal list up
        
        //#round robin
        //#proportional fairness
        
        //#lambda poassion?
        //#UPT

        //######

        double noise_floor = -108;  //#dBm    #Presentation of Specification to TSG or WG - 3GPP
        int i;
        int num_SINR = 0;
        double sinr_upper, interf_tmp;
        //double sinr_upper_db, interf_tmp_db;
        double interf;
        //double interf_db;
        list<BS *> interf_bs_list;
        list<int> interf_bs_cell_list;
        double noise_tmp;
        double noise_tmp_db;
        double sinr_bottom, sinr;
        //double sinr_bottom_db, sinr_db;
        double capacity, bandwidth;
                
        //#ifdef DEBUG
        //cout << "!HetNet_toc_Sim capacity_calculation1\n";
        //printf("Link_list vector: %d\n", Link_list.size());
        //#endif // DEBUG

        for (Link *i : Link_list) {        
         //for (i = 1; i <= sizeof(self.Link_list) / sizeof(self.Link_list[0]); i++){
            //#print("Link_list:"+str(i.get_s().get_name())+", "+str(i.get_d().get_name())+", "+str(i.is_active()))

            //#ifdef DEBUG
            //cout << "!HetNet_toc_Sim capacity_calculation2\n";
            //printf("Link, %d\n", (*i).id);
            //#endif // DEBUG

            if ((*i).is_active() == true){
                //#ifdef DEBUG
                //printf("sinr_upper0\n");
                ////printf("sinr_upper_db1: %f\n", sinr_upper_db);
                //#endif // DEBUG
                sinr_upper = signal((*i).get_bs(), (*i).get_ue(), (*i).get_direction());
                //#print("tmp:"+str(w2d(sinr_upper))+", "+str(sinr_upper_db))
                //#ifdef DEBUG
                //printf("sinr_upper1: %f\n", sinr_upper);
                ////printf("sinr_upper_db1: %f\n", sinr_upper_db);
                //#endif // DEBUG

                //#print("i:"+str(i.get_s().get_name())+", "+str(i.get_d().get_name())+", "+str(sinr_upper_db))
                interf = 0;
                //interf_db = 0;
                interf_bs_list.push_back((*i).get_bs());
                interf_bs_cell_list.push_back((*(*i).get_bs()).get_cell_id());

                //#ifdef DEBUG
                //cout << "!HetNet_toc_Sim capacity_calculation3\n";
                //#endif // DEBUG

                for (Link *j : Link_list) {        
                    //#if (j != i) and (j.is_active() == True) and (j.get_bs().get_cell_id() != i.get_bs().get_cell_id()) and (j.get_bs() not in interf_bs_list): #???
                    //#if (j != i) and (j.is_active() == True) and (j.get_bs().get_cell_id() != i.get_bs().get_cell_id()): #???
                    bool flag_bs = false;
                    for (BS *k1 : interf_bs_list){
                        BS *k2 = (*j).get_bs();
                        if (k1 == k2){
                            flag_bs = true;
                        }
                    }
                    
                    bool flag_id = false;
                    for (int k1 : interf_bs_cell_list){
                        int k2 = (*(*j).get_bs()).get_cell_id();
                        if (k1 == k2){
                            flag_id = true;
                        }
                    }

                    if ((j != i) && ((*j).is_active() == true) && flag_bs && flag_id ){ //#???
                        interf_tmp = signal((*i).get_bs(), (*i).get_ue(), (*i).get_direction());
                        //#print("j:"+str(j.get_s().get_name())+", "+str(j.get_d().get_name())+", "+str(interf_tmp_db))
                        interf += interf_tmp;
                        //if (interf_db == 0){
                        //    interf_db = interf_tmp_db;
                        //} else {
                        //    interf_db = dsum(interf_db, interf_tmp_db);
                        //}
                        interf_bs_list.push_back((*j).get_bs());
                        interf_bs_cell_list.push_back((*(*j).get_bs()).get_cell_id());
                        
                    }
                }

                //#ifdef DEBUG
                //cout << "!HetNet_toc_Sim capacity_calculation4\n";
                //#endif // DEBUG
 
                (*(*i).get_ue()).append_interf_dl(interf);

                //#ifdef DEBUG
                //printf("sinr_upper: %f\n", sinr_upper);
                //printf("sinr_interf: %f\n", interf);
                //#endif // DEBUG
                //#noise_tmp_db = noise_floor + i.get_d().get_noise_figure()
                noise_tmp_db = noise_floor;
                //#ifdef DEBUG
                //printf("noise_tmp1: %f\n", noise_tmp_db);   
                //printf("noise_tmp2: %f\n", d2w(noise_tmp_db));       
                //#endif // DEBUG
                //#noise_tmp = math.pow(d2w(noise_tmp1), 2)
                noise_tmp = d2w(noise_tmp_db);
                //#print("noise_tmp:"+str(noise_tmp))
                sinr_bottom = interf + noise_tmp;
                //if (interf_db == 0) {
                //    sinr_bottom_db = noise_tmp_db;
                //} else {
                //    sinr_bottom_db = dsum(interf_db, noise_tmp_db);
                //}
                sinr = sinr_upper / sinr_bottom;
                //sinr_db = sinr_upper_db - sinr_bottom_db;
                
                //#ifdef DEBUG
                //printf("SINR db: %s, %s, %f, %f, %f\n", (*(*i).get_bs()).get_name().c_str(), (*(*i).get_ue()).get_name().c_str(), w2d(sinr_upper), w2d(sinr_bottom), w2d(sinr));
                //#endif // DEBUG

                //#print("SINR db:"+str(i.get_s().get_name())+", "+str(i.get_d().get_name())+", "+str(w2d(sinr_upper))+", "+str(w2d(sinr_bottom))+", "+str(w2d(sinr))+", "+str(sinr_upper_db)+", "+str(sinr_bottom_db)+", "+str(sinr_db))
                //#print("SINR db:"+str(i.get_s().get_type())+", "+str(i.get_d().get_type())+", "+str(w2d(sinr_upper))+", "+str(w2d(sinr_bottom))+", "+str(w2d(sinr)))
                //#print("SINR db:"+str(i.get_s().get_type())+", "+str(i.get_d().get_type())+", "+str(w2d(sinr))+", "+str(self.time_step))
                //##print("SINR db:"+str(i.get_s().get_name())+", "+str(i.get_d().get_name())+", "+str(w2d(sinr))+", "+str(self.time_step))
                //#print("")

                num_SINR = num_SINR + 1;
                
                capacity = bandwidth * log2(1 + sinr); //!!!!!!!!!!!!!!!log2 kokodake

                capacity = 0.01 * 0.1 * capacity; //#10ms 1subframe
                
                capacity = capacity * 100; //####set 1 timestep -> 1s
                //##print("capacity:"+str(capacity))
                
                (*i).set_capacity(capacity);
                
                //#ifdef DEBUG
                //cout << "!HetNet_toc_Sim capacity_calculation5\n";
                //#endif // DEBUG
                
            } else {
                #ifdef DEBUG
                cout << "!HetNet_toc_Sim else\n";
                #endif // DEBUG
                (*i).set_capacity(0);
            }
            
        //#ifdef DEBUG
        //cout << "!HetNet_toc_Sim num_SINR\n";
        //#endif // DEBUG
        //##print("num_SINR:"+str(self.time_slot)+", "+str(num_SINR))
        
        }
    }            


double Simulator::execute_sim_darwinian(vector<double> position_list){

        //#BS
        //#action,
        //#send
        //#recieve,
        //#move
        //#setting,
        //#observation, reward

        #ifdef DEBUG
        clock_t start, here;
        start = clock();
        #endif // DEBUG

        #ifdef DEBUG
        here = clock();
        printf("!!HetNet_toc_Sim execute_sim_darwinian1, %.2f\n", (double)(here - start)/1000);
        start = here;
        #endif // DEBUG

        int time_step, time_slot;
        double reward;
        Darwinian_deme cDeme;
        DEME *deme_list;

        printf ("self.time_step: %d\n", time_step);
        
        #ifdef DEBUG
        here = clock();
        printf("!!HetNet_toc_Sim execute_sim_darwinian2, %.2f\n", (double)(here - start)/1000);
        start = here;
        #endif // DEBUG

        //printf("bs");
        //for (BS bs : BS_list){
        //    printf(str(bs.get_xyz()))
        //}

        //print("ue")
        //for ue in self.UE_list:
        //    print(str(ue.get_xyz()))
        //print("ue_end")

        if (time_step == 0){
            cDeme.evolution_initialization(time_step);
            cDeme.evolution_gen_environment(time_step);
            deme_list = cDeme.evolution_gen_update(time_step);
        }else{
            cDeme.evolution_gen_environment(time_step);
            deme_list = cDeme.evolution_gen_update(time_step);
        }

        #ifdef DEBUG
        here = clock();
        printf("!!HetNet_toc_Sim execute_sim_darwinian3, %.2f\n", (double)(here - start)/1000);
        start = here;
        #endif // DEBUG

        float w[NN];
        float v[N];
        pair<double, double> ans;        
        for (int n=0; n< NN; n++){
        //for o_env, output in enumerate(deme_list):
            //printf("output:"+str(output))

            for (UE *ue : UE_list){
                (*ue).cp_data_list();
                #ifdef DEBUG
                here = clock();
                printf("!!HetNet_toc_Sim execute_sim_darwinian30, %.2f\n", (double)(here - start)/1000);
                start = here;
                printf("(*ue).data_list.size():%d\n", (*ue).data_list.size());
                printf("(*ue).data_list_copy.size():%d\n", (*ue).data_list_copy.size());
                #endif // DEBUG
            }
            
            #ifdef DEBUG
            here = clock();
            printf("!!HetNet_toc_Sim execute_sim_darwinian31, %.2f\n", (double)(here - start)/1000);
            start = here;
            #endif // DEBUG

            //#send_recieve
            for (int j=0; j< 10; j++){
                time_slot = j % 10;
                
                for (BS *bs : BS_list){
                    //#print("output2:"+str(output))
                    #ifdef DEBUG
                    printf ("output");
                    #endif // DEBUG
                    for (int i=0; i<N; i++){
                        v[i] = deme_list[0].output[n][i];
                        #ifdef DEBUG
                        printf ("%f  ", v[i]);
                        #endif // DEBUG
                    }
                    #ifdef DEBUG
                    printf ("\n");
                    #endif // DEBUG
                    (*bs).sim_set_state_darwinian_quad(v, time_slot);
                    #ifdef DEBUG
                    here = clock();
                    printf("!!HetNet_toc_Sim execute_sim_darwinian321, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    printf("id state timestep %d, %d, %d\n", (*bs).id, (*bs).get_state(), time_step);
                    #endif // DEBUG
                    //#for i in self.BS_list:
                    //#    i.set_state(self.time_slot)
                }

                #ifdef DEBUG
                here = clock();
                printf("!!HetNet_toc_Sim execute_sim_darwinian311, %.2f\n", (double)(here - start)/1000);
                start = here;
                #endif // DEBUG
            
                capacity_calculation(); 

                #ifdef DEBUG
                for (Link *i: Link_list){
                    here = clock();
                    printf("!!HetNet_toc_Sim execute_sim_darwinian31211, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    printf("capacity:%e, %d\n", (*i).get_capacity(), (*i).id);
                }
                #endif // DEBUG


                #ifdef DEBUG
                here = clock();
                printf("!!HetNet_toc_Sim execute_sim_darwinian312, %.2f\n", (double)(here - start)/1000);
                start = here;
                #endif // DEBUG

                for (UE *ue: UE_list){
                    #ifdef DEBUG
                    printf("(*ue).data_list.size():%d\n", (*ue).data_list.size());
                    printf("(*ue).data_list_copy.size():%d\n", (*ue).data_list_copy.size());
                    #endif // DEBUG
                    (*ue).recieve_test(time_slot);
                }
                //#print(str(self.time_slot) + ": recieve")

                #ifdef DEBUG
                here = clock();
                printf("!!HetNet_toc_Sim execute_sim_darwinian3121, %.2f\n", (double)(here - start)/1000);
                start = here;
                #endif // DEBUG

            
                for (UE *ue: UE_list){
                    (*ue).send_test(time_slot);
                }
                //#print(str(self.time_slot) + ": send")
                
                #ifdef DEBUG
                here = clock();
                printf("!!HetNet_toc_Sim execute_sim_darwinian3122, %.2f\n", (double)(here - start)/1000);
                start = here;
                for (BS *bs: BS_list){
                    printf("sentdata_ul_list.size: %d\n", (*bs).sentdata_ul_list.size());
                    printf("sentdata_dl_list.size: %d\n", (*bs).sentdata_dl_list.size());
                }
                #endif // DEBUG
                }
            
            
            #ifdef DEBUG
            here = clock();
            printf("!!HetNet_toc_Sim execute_sim_darwinian32, %.2f\n", (double)(here - start)/1000);
            start = here;
            #endif // DEBUG

            reward = 0;
            for (BS *bs: BS_list){
                ans = (*bs).get_bs_sentdata_total();
                reward = reward + ans.first;
                reward = reward + ans.second;
            }
            #ifdef DEBUG
            printf("reward: %f", reward);
            #endif // DEBUG
            //print("reward\t:"+str(reward)+", "+str(output))
                
            //#ans1_1, ans1_2 = bs.get_bs_sentdata_total()
            //#print("ans1_1:"+str(ans1_1)+"ans1_2:"+str(ans1_2))
            //#if (ans1_1 != 0) and (ans1_2 != 0):
            //#    reward = ans1_1 * ans1_2 #ulmax, dlmax
            //#elif (ans1_1 != 0):
            //#    reward = ans1_1
            //#elif (ans1_2 != 0):
            //#    reward = ans1_2
            //#else:
            //#    reward = 0
            
            w[n] = reward;
        }
        
        #ifdef DEBUG
        here = clock();
        printf("!!HetNet_toc_Sim execute_sim_darwinian4, %.2f\n", (double)(here - start)/1000);
        start = here;
        #endif // DEBUG

        //print("w1:"+str(w))
        cDeme.return_fitness(w, 0);
            
        float *best_output = cDeme.evolution_gen_calcbestfitness(time_slot);
        //self.sim_darwinian_learning(self.time_slot)############!!!!!!!
        //print("best_output:"+str(self.best_output))

        deme_list = cDeme.evolution_gen_selection(time_slot);

        for (int n=0; n< 2; n++){
        //for o_env, output in enumerate([deme_list[0], deme_list[1]]):
        
            for (UE *ue : UE_list){
                (*ue).cp_data_list();
            }

            //#send_recieve
            for (int j=0; j<10; j++){
                time_slot = j % 10;
            
                for (BS *bs : BS_list){
                    if (n==0){
                        (*bs).sim_set_state_darwinian_quad(deme_list[0].v1, time_slot);
                    }else{
                        (*bs).sim_set_state_darwinian_quad(deme_list[0].v2, time_slot);                    
                    }
                    #ifdef DEBUG
                    here = clock();
                    printf("!!HetNet_toc_Sim execute_sim_darwinian40, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    printf("id state timestep %d, %d, %d\n", (*bs).id, (*bs).get_state(), time_step);
                    #endif // DEBUG
                    //#for i in self.BS_list:
                    //#    i.set_state(self.time_slot)
                }
                
                capacity_calculation();        

                #ifdef DEBUG
                for (Link *i: Link_list){
                    printf("capacity:%e, %d\n", (*i).get_capacity(), (*i).id);
                }
                here = clock();
                printf("!!HetNet_toc_Sim execute_sim_darwinian401, %.2f\n", (double)(here - start)/1000);
                start = here;
                #endif // DEBUG

               for (UE *ue : UE_list){
                    (*ue).recieve_test(time_slot);
                    #ifdef DEBUG
                    printf("(*ue).data_list.size():%d\n", (*ue).data_list.size());
                    #endif // DEBUG
                }


                #ifdef DEBUG
                here = clock();
                printf("!!HetNet_toc_Sim execute_sim_darwinian41, %.2f\n", (double)(here - start)/1000);
                start = here;
                #endif // DEBUG

                
                for (UE *ue : UE_list){
                    (*ue).send_test(time_slot);
                }

                #ifdef DEBUG
                here = clock();
                printf("!!HetNet_toc_Sim execute_sim_darwinian42, %.2f\n", (double)(here - start)/1000);
                start = here;
                #endif // DEBUG


            }

            reward = 0;
            for (BS *bs : BS_list){
                ans = (*bs).get_bs_sentdata_total();
                reward = reward + ans.first;
                reward = reward + ans.second;
            }
            //print("reward\t:"+str(reward)+", "+str(output))

            //#ans1_1, ans1_2 = bs.get_bs_sentdata_total()
            //#if (ans1_1 != 0) and (ans1_2 != 0):
            //#    reward = ans1_1 * ans1_2 #ulmax, dlmax
            //#elif (ans1_1 != 0):
            //#    reward = ans1_1
            //#elif (ans1_2 != 0):
            //#    reward = ans1_2
            //#else:
            //#    reward = 0
            
            w[n] = reward;
        }
        
        #ifdef DEBUG
        here = clock();
        printf("!!HetNet_toc_Sim execute_sim_darwinian5, %.2f\n", (double)(here - start)/1000);
        start = here;
        #endif // DEBUG

        cDeme.return_fitness_mutate(w, 0);

        cDeme.evolution_gen_replacemutation(time_slot);
        //#cDeme.evolution_gen_learnbest(time_slot);
        //#cDeme.evolution_gen_learnworst(time_slot);
        
        for (int j=0; j< 10; j++){
            time_slot = time_step % 10;


            for (BS *bs : BS_list){
                (*bs).sim_set_state_darwinian_quad(best_output, time_slot);
                #ifdef DEBUG
                here = clock();
                printf("!!HetNet_toc_Sim execute_sim_darwinian61, %.2f\n", (double)(here - start)/1000);
                start = here;
                printf("id state timestep %d, %d, %d\n", (*bs).id, (*bs).get_state(), time_step);
                #endif // DEBUG
            }                    

            capacity_calculation();        

            #ifdef DEBUG
            for (Link *i: Link_list){
                printf("capacity:%e, %d\n", (*i).get_capacity(), (*i).id);
            }
            here = clock();
            printf("!!HetNet_toc_Sim execute_sim_darwinian611, %.2f\n", (double)(here - start)/1000);
            start = here;
            #endif // DEBUG

            for (UE *ue : UE_list){
                #ifdef DEBUG
                printf("(*ue).data_list.size():%d\n", (*ue).data_list.size());
                #endif // DEBUG
                (*ue).recieve(time_slot);
            }

            #ifdef DEBUG
            here = clock();
            printf("!!HetNet_toc_Sim execute_sim_darwinian51, %.2f\n", (double)(here - start)/1000);
            start = here;
            #endif // DEBUG
            
            for (UE *ue : UE_list){
                (*ue).send(time_slot);
            }

            #ifdef DEBUG
            here = clock();
            printf("!!HetNet_toc_Sim execute_sim_darwinian52, %.2f\n", (double)(here - start)/1000);
            start = here;
            #endif // DEBUG
            
            time_step = time_step + 1;
        }

        for (UE *ue : UE_list){
            (*ue).clear_links_ul();
            (*ue).clear_links_dl();
        }
        
        #ifdef DEBUG
        here = clock();
        printf("!!HetNet_toc_Sim execute_sim_darwinian6, %.2f\n", (double)(here - start)/1000);
        start = here;
        #endif // DEBUG

        reward = 0;
        for (BS *bs : BS_list){
            ans = (*bs).get_bs_sentdata_total();
            //#print("reward:"+str(bs.get_name())+"ans1_1:"+str(ans1_1)+"ans1_2:"+str(ans1_2))
            reward = reward + ans.first;
            reward = reward + ans.second;
            #ifdef DEBUG
            here = clock();
            printf("!!HetNet_toc_Sim execute_sim_darwinian61, %.2f\n", (double)(here - start)/1000);
            start = here;
            printf("id state timestep %d, %d, %d\n", (*bs).id, (*bs).get_state(), time_step);
            #endif // DEBUG
        }
        //print("finalreward:\t"+str(reward)+", "+str(self.best_output))

        //#move xy
        //#print("len UE_list:"+str(len(self.UE_list)))
        move_file(position_list);  //#stop move
        for (UE *ue : UE_list){
            (*ue).renew_time_stamp();
        }

        #ifdef DEBUG
        here = clock();
        printf("!!HetNet_toc_Sim execute_sim_darwinian7, %.2f\n", (double)(here - start)/1000);
        start = here;
        #endif // DEBUG

        //#move change bs
        if (true){

            BS *old_bs;
            BS *new_bs;
            
            for (UE *ue : UE_list){
                old_bs = (*ue).get_inside_BS();
                new_bs = (*ue).find_BS(old_bs);
                //#print("new_BS:"+str(new_bs.get_name())+", "+str(i.get_name())+", "+str(self.time_step))

                #ifdef DEBUG
                here = clock();
                printf("!!HetNet_toc_Sim execute_sim_darwinian71, %.2f\n", (double)(here - start)/1000);
                start = here;
                #endif // DEBUG
                
                if (old_bs != new_bs){
                    (*ue).set_connecting_BS(new_bs);
                    (*ue).set_inside_BS(new_bs);

                    #ifdef DEBUG
                    here = clock();
                    printf("!!HetNet_toc_Sim execute_sim_darwinian710, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    printf("BS id: %d", (*old_bs).id);
                    #endif // DEBUG
    
                    (*old_bs).remove_inside_UE(ue);
    
                    #ifdef DEBUG
                    here = clock();
                    printf("!!HetNet_toc_Sim execute_sim_darwinian711, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    printf("BS id: %d", (*old_bs).id);
                    #endif // DEBUG

                    vector<UE *> UE_tmp = (*old_bs).get_connecting_UE_ul();
                    #ifdef DEBUG
                    here = clock();
                    printf("!!HetNet_toc_Sim execute_sim_darwinian712, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    #endif // DEBUG
                    bool UE_bool = false;
                    for(auto iter = UE_tmp.begin(); iter != UE_tmp.end(); ++iter){
                        #ifdef DEBUG
                        here = clock();
                        printf("!!HetNet_toc_Sim execute_sim_darwinian713, %.2f\n", (double)(here - start)/1000);
                        start = here;
                        #endif // DEBUG
                        if((*(*iter)).id == (*ue).id){
                            UE_bool = true;
                        }
                    }
                    

                    #ifdef DEBUG
                    here = clock();
                    printf("!!HetNet_toc_Sim execute_sim_darwinian72, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    #endif // DEBUG

                    if (UE_bool){
                        (*old_bs).remove_connecting_UE_ul(ue);
                        bool conn = (*new_bs).set_connecting_UE_ul(ue);
                        //#print("connect:"+str(conn))
                        int j_env = 0;
                        for (Link *j : Link_list){
                            if (((*j).get_ue() == ue) && ((*j).get_bs() == old_bs) && ((*j).get_direction() == 0)){
                                if (conn == true){
                                    (*Link_list[j_env]).change_bs(new_bs);
                                }else{
                                    Link_list.erase (Link_list.begin() + j_env);
                                    //Link_list.pop(j_env);
                                }
                            }
                            j_env = j_env + 1;
                        }
                    }
                    
                    #ifdef DEBUG
                    here = clock();
                    printf("!!HetNet_toc_Sim execute_sim_darwinian73, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    #endif // DEBUG

                    UE_tmp = (*old_bs).get_connecting_UE_dl();
                    UE_bool = false;
                    for(auto iter = UE_tmp.begin(); iter != UE_tmp.end(); ++iter){
                        if((*(*iter)).id == (*ue).id){
                            UE_bool = true;
                        }
                    }
                    if (UE_bool){
                        (*old_bs).remove_connecting_UE_dl(ue);
                        bool conn = (*new_bs).set_connecting_UE_dl(ue);
                        //#print("connect:"+str(conn))
                        int j_env = 0;
                        for (Link *j : Link_list){
                            if (((*j).get_bs() == old_bs) && ((*j).get_ue() == ue) && ((*j).get_direction() == 1)){
                                if (conn == true){
                                    (*Link_list[j_env]).change_bs(new_bs);
                                }else{
                                    Link_list.erase (Link_list.begin() + j_env);
                                    //self.Link_list.pop(j_env);
                                }
                            }
                            j_env = j_env + 1;
                        }
                    }
                    
                    #ifdef DEBUG
                    here = clock();
                    printf("!!HetNet_toc_Sim execute_sim_darwinian74, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    #endif // DEBUG

                    (*new_bs).set_inside_UE(ue);
                    //#print("lendatalist:")
                    int env_t = 0;
                    for (Data * data : (*ue).data_list){
                    //for env_t, (tbs, _, _, _, _, _) in enumerate(i.data_list):
                        if (data->bs == old_bs){
                            (*ue).data_list[env_t]->bs = new_bs;
                        }
                        env_t = env_t + 1;
                    }
                }
                                            
            }

        }
        
        
        #ifdef DEBUG
        here = clock();
        printf("!!HetNet_toc_Sim execute_sim_darwinian8, %.2f\n", (double)(here - start)/1000);
        start = here;
        printf("UE_list: %d\n", UE_list.size());
        #endif // DEBUG

        //# gen new data
        for (UE *ue : UE_list){    
            #ifdef DEBUG
            here = clock();
            printf("!!HetNet_toc_Sim execute_sim_darwinian81, %.2f\n", (double)(here - start)/1000);
            start = here;
            #endif // DEBUG
            (*ue).gen_random_data_ue(time_step / 10);  //#gen random data
            #ifdef DEBUG
            here = clock();
            printf("!!HetNet_toc_Sim execute_sim_darwinian82, %.2f\n", (double)(here - start)/1000);
            start = here;
            printf("(*ue).data_list.size():%d\n", (*ue).data_list.size());
            #endif // DEBUG
        }
        
        #ifdef DEBUG
        here = clock();
        printf("!!HetNet_toc_Sim execute_sim_darwinian9, %.2f\n", (double)(here - start)/1000);
        start = here;
        #endif // DEBUG

        //#set connecting_UE     
        set_send_recieve();

        #ifdef DEBUG
        here = clock();
        printf("!!HetNet_toc_Sim execute_sim_darwinian10, %.2f\n", (double)(here - start)/1000);
        start = here;
        #endif // DEBUG

        for (BS *bs : BS_list){
            //#print("connecting_UE:"+str(len(i.get_connecting_UE_ul()))+", "+str(len(i.get_connecting_UE_dl()))+", "+str(i.get_name()))
            (*bs).set_c_connecting_UE();
        }

                
    }



double Simulator::execute_sim_random(vector<double> position_list){

        //#BS
        //#action,
        //#send
        //#recieve,
        //#move
        //#setting,
        //#observation, reward

        #ifdef DEBUG
        clock_t start, here;
        start = clock();
        #endif // DEBUG

        #ifdef DEBUG
        here = clock();
        printf("!HetNet_toc_Sim execute_sim_darwinian1, %.2f\n", (double)(here - start)/1000);
        start = here;
        #endif // DEBUG

        int time_step, time_slot;
        double reward;
        Darwinian_deme cDeme;
        DEME *deme_list;

        printf ("self.time_step: %d\n", time_step);
        
        #ifdef DEBUG
        here = clock();
        printf("!HetNet_toc_Sim execute_sim_darwinian2, %.2f\n", (double)(here - start)/1000);
        start = here;
        #endif // DEBUG

        //printf("bs");
        //for (BS bs : BS_list){
        //    printf(str(bs.get_xyz()))
        //}

        //print("ue")
        //for ue in self.UE_list:
        //    print(str(ue.get_xyz()))
        //print("ue_end")
        
        for (int j=0; j< 10; j++){
            time_slot = time_step % 10;


            for (BS *bs : BS_list){
                (*bs).set_state(rand()%2);
                #ifdef DEBUG
                here = clock();
                printf("!HetNet_toc_Sim execute_sim_darwinian61, %.2f\n", (double)(here - start)/1000);
                start = here;
                printf("id state timestep %d, %d, %d\n", (*bs).id, (*bs).get_state(), time_step);
                #endif // DEBUG
            }                    

            capacity_calculation();        

            #ifdef DEBUG
            for (Link *i: Link_list){
                printf("capacity:%e, %d\n", (*i).get_capacity(), (*i).id);
            }
            here = clock();
            printf("!HetNet_toc_Sim execute_sim_darwinian611, %.2f\n", (double)(here - start)/1000);
            start = here;
            #endif // DEBUG

            for (UE *ue : UE_list){
                #ifdef DEBUG
                printf("(*ue).data_list.size():%d\n", (*ue).data_list.size());
                #endif // DEBUG
                (*ue).recieve(time_slot);
            }

            #ifdef DEBUG
            here = clock();
            printf("!HetNet_toc_Sim execute_sim_darwinian51, %.2f\n", (double)(here - start)/1000);
            start = here;
            #endif // DEBUG

            
            for (UE *ue : UE_list){
                (*ue).send(time_slot);
            }

            #ifdef DEBUG
            here = clock();
            printf("!HetNet_toc_Sim execute_sim_darwinian52, %.2f\n", (double)(here - start)/1000);
            start = here;
            #endif // DEBUG
            
            time_step = time_step + 1;
        }

        for (UE *ue : UE_list){
            (*ue).clear_links_ul();
            (*ue).clear_links_dl();
        }
        
        #ifdef DEBUG
        here = clock();
        printf("!HetNet_toc_Sim execute_sim_darwinian6, %.2f\n", (double)(here - start)/1000);
        start = here;
        #endif // DEBUG

        pair<double, double> ans;        
        reward = 0;
        for (BS *bs : BS_list){
            ans = (*bs).get_bs_sentdata_total();
            //#print("reward:"+str(bs.get_name())+"ans1_1:"+str(ans1_1)+"ans1_2:"+str(ans1_2))
            reward = reward + ans.first;
            reward = reward + ans.second;
            #ifdef DEBUG
            here = clock();
            printf("!HetNet_toc_Sim execute_sim_darwinian61, %.2f\n", (double)(here - start)/1000);
            start = here;
            printf("id state timestep %d, %d, %d\n", (*bs).id, (*bs).get_state(), time_step);
            #endif // DEBUG
        }
        //print("finalreward:\t"+str(reward)+", "+str(self.best_output))

        //#move xy
        //#print("len UE_list:"+str(len(self.UE_list)))
        move_file(position_list);  //#stop move
        for (UE *ue : UE_list){
            (*ue).renew_time_stamp();
        }

        #ifdef DEBUG
        here = clock();
        printf("!HetNet_toc_Sim execute_sim_darwinian7, %.2f\n", (double)(here - start)/1000);
        start = here;
        #endif // DEBUG

        //#move change bs
        if (true){

            BS *old_bs;
            BS *new_bs;
            
            for (UE *ue : UE_list){
                old_bs = (*ue).get_inside_BS();
                new_bs = (*ue).find_BS(old_bs);
                //#print("new_BS:"+str(new_bs.get_name())+", "+str(i.get_name())+", "+str(self.time_step))

                #ifdef DEBUG
                here = clock();
                printf("!HetNet_toc_Sim execute_sim_darwinian71, %.2f\n", (double)(here - start)/1000);
                start = here;
                #endif // DEBUG
                
                if (old_bs != new_bs){
                    (*ue).set_connecting_BS(new_bs);
                    (*ue).set_inside_BS(new_bs);

                    #ifdef DEBUG
                    here = clock();
                    printf("!HetNet_toc_Sim execute_sim_darwinian710, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    printf("BS id: %d", (*old_bs).id);
                    #endif // DEBUG
    
                    (*old_bs).remove_inside_UE(ue);
    
                    #ifdef DEBUG
                    here = clock();
                    printf("!HetNet_toc_Sim execute_sim_darwinian711, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    printf("BS id: %d", (*old_bs).id);
                    #endif // DEBUG

                    vector<UE *> UE_tmp = (*old_bs).get_connecting_UE_ul();
                    #ifdef DEBUG
                    here = clock();
                    printf("!HetNet_toc_Sim execute_sim_darwinian712, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    #endif // DEBUG
                    bool UE_bool = false;
                    for(auto iter = UE_tmp.begin(); iter != UE_tmp.end(); ++iter){
                        #ifdef DEBUG
                        here = clock();
                        printf("!HetNet_toc_Sim execute_sim_darwinian713, %.2f\n", (double)(here - start)/1000);
                        start = here;
                        #endif // DEBUG
                        if((*(*iter)).id == (*ue).id){
                            UE_bool = true;
                        }
                    }
                    

                    #ifdef DEBUG
                    here = clock();
                    printf("!HetNet_toc_Sim execute_sim_darwinian72, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    #endif // DEBUG

                    if (UE_bool){
                        (*old_bs).remove_connecting_UE_ul(ue);
                        bool conn = (*new_bs).set_connecting_UE_ul(ue);
                        //#print("connect:"+str(conn))
                        int j_env = 0;
                        for (Link *j : Link_list){
                            if (((*j).get_ue() == ue) && ((*j).get_bs() == old_bs) && ((*j).get_direction() == 0)){
                                if (conn == true){
                                    (*Link_list[j_env]).change_bs(new_bs);
                                }else{
                                    Link_list.erase (Link_list.begin() + j_env);
                                    //Link_list.pop(j_env);
                                }
                            }
                            j_env = j_env + 1;
                        }
                    }
                    
                    #ifdef DEBUG
                    here = clock();
                    printf("!HetNet_toc_Sim execute_sim_darwinian73, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    #endif // DEBUG

                    UE_tmp = (*old_bs).get_connecting_UE_dl();
                    UE_bool = false;
                    for(auto iter = UE_tmp.begin(); iter != UE_tmp.end(); ++iter){
                        if((*(*iter)).id == (*ue).id){
                            UE_bool = true;
                        }
                    }
                    if (UE_bool){
                        (*old_bs).remove_connecting_UE_dl(ue);
                        bool conn = (*new_bs).set_connecting_UE_dl(ue);
                        //#print("connect:"+str(conn))
                        int j_env = 0;
                        for (Link *j : Link_list){
                            if (((*j).get_bs() == old_bs) && ((*j).get_ue() == ue) && ((*j).get_direction() == 1)){
                                if (conn == true){
                                    (*Link_list[j_env]).change_bs(new_bs);
                                }else{
                                    Link_list.erase (Link_list.begin() + j_env);
                                    //self.Link_list.pop(j_env);
                                }
                            }
                            j_env = j_env + 1;
                        }
                    }
                    
                    #ifdef DEBUG
                    here = clock();
                    printf("!HetNet_toc_Sim execute_sim_darwinian74, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    #endif // DEBUG

                    (*new_bs).set_inside_UE(ue);
                    //#print("lendatalist:")
                    int env_t = 0;
                    for (Data * data : (*ue).data_list){
                    //for env_t, (tbs, _, _, _, _, _) in enumerate(i.data_list):
                        if (data->bs == old_bs){
                            (*ue).data_list[env_t]->bs = new_bs;
                        }
                        env_t = env_t + 1;
                    }
                }
                                            
            }

        }
        
        
        #ifdef DEBUG
        here = clock();
        printf("!HetNet_toc_Sim execute_sim_darwinian8, %.2f\n", (double)(here - start)/1000);
        start = here;
        printf("UE_list: %d\n", UE_list.size());
        #endif // DEBUG

        //# gen new data
        for (UE *ue : UE_list){    
            #ifdef DEBUG
            here = clock();
            printf("!HetNet_toc_Sim execute_sim_darwinian81, %.2f\n", (double)(here - start)/1000);
            start = here;
            #endif // DEBUG
            (*ue).gen_random_data_ue(time_step / 10);  //#gen random data
            #ifdef DEBUG
            here = clock();
            printf("!HetNet_toc_Sim execute_sim_darwinian82, %.2f\n", (double)(here - start)/1000);
            start = here;
            printf("(*ue).data_list.size():%d\n", (*ue).data_list.size());
            #endif // DEBUG
        }
        
        #ifdef DEBUG
        here = clock();
        printf("!HetNet_toc_Sim execute_sim_darwinian9, %.2f\n", (double)(here - start)/1000);
        start = here;
        #endif // DEBUG

        //#set connecting_UE     
        set_send_recieve();

        #ifdef DEBUG
        here = clock();
        printf("!HetNet_toc_Sim execute_sim_darwinian10, %.2f\n", (double)(here - start)/1000);
        start = here;
        #endif // DEBUG

        for (BS *bs : BS_list){
            //#print("connecting_UE:"+str(len(i.get_connecting_UE_ul()))+", "+str(len(i.get_connecting_UE_dl()))+", "+str(i.get_name()))
            (*bs).set_c_connecting_UE();
        }

                
    }


void Simulator::del_link_ul(Link *x){
    
        //#print("del_link:"+str(x.get_s().get_name())+", "+str(x.get_d().get_name()))
        
        //#for i in self.Link_list:
        //#    print("Link_list:"+str(i.get_s().get_name())+", "+str(i.get_d().get_name()))
            
    
        (*(*x).get_bs()).remove_connecting_UE_ul((*x).get_ue());
        bool exist = false;
        for (Link *i : Link_list){
            if ((i != x) && ((*i).get_bs() == (*x).get_bs()) && ((*i).get_ue() == (*x).get_ue())){
                exist = true;
            }
        }
        if (exist == false){
            //#print("remove ul")
            (*(*x).get_ue()).remove_connecting_BS();
        }
        //#    print("del_link:"+str(x.get_bs().get_name())+","+str(x.get_bs().get_connecting_UE_name()))
            
        for(auto iter = Link_list.begin(); iter != Link_list.end(); ++iter){
            if((*(*iter)).id == (*x).id){
                delete(*iter);
                iter = Link_list.erase(iter);
                break;
            }
        }

}

void Simulator::del_link_dl(Link *x){
    
        //#print("del_link:"+str(x.get_s().get_name())+", "+str(x.get_d().get_name()))
        
        //#for i in self.Link_list:
        //#    print("Link_list:"+str(i.get_s().get_name())+", "+str(i.get_d().get_name()))
            
    
        (*(*x).get_bs()).remove_connecting_UE_dl((*x).get_ue());
        bool exist = false;
        for (Link *i : Link_list){
            if ((i != x) && ((*i).get_bs() == (*x).get_bs()) && ((*i).get_ue() == (*x).get_ue())){
                exist = true;
            }
        }
        if (exist == false){
            //#print("remove dl")
            (*(*x).get_ue()).remove_connecting_BS();
        }
        //#    print("del_link:"+str(x.get_bs().get_name())+","+str(x.get_bs().get_connecting_UE_name()))
            
        for(auto iter = Link_list.begin(); iter != Link_list.end(); ++iter){
            if((*(*iter)).id == (*x).id){
                delete(*iter);
                iter = Link_list.erase(iter);
                break;
            }
        }

}



void Simulator::set_send_recieve(){
    
        vector<Data *> data_list;
    
        #ifdef DEBUG
        cout << "!HetNet_toc_Sim set_send_recieve()\n";
        #endif // DEBUG

        for (UE *i : UE_list){
            data_list = (*i).get_data_list();
            //##print(str(i.get_name())+", "+str(len(data_list)))
            for (Data *d : data_list){
                if (d->send_begin == 1){
                    #ifdef DEBUG
                    cout << "!HetNet_toc_Sim set_send_recieve1()\n";
                    printf("d.bs, i, d_direction: %d, %d, %d\n", (*d->bs).id, (*i).id, d->direction);
                    printf("Link_list.size(): %d\n", Link_list.size());
                    #endif // DEBUG
                    if (d->direction == 0){
                        (*i).gen_link(d->bs, i, 0);
                    }
                    if (d->direction == 1){
                        (*i).gen_link(d->bs, i, 1);
                    }
                }
            }
        }
        
        for (UE *i : UE_list){
            data_list = (*i).get_data_list();
            //##print(str(i.get_name())+", "+str(len(data_list)))
            for (Data *d : data_list){
                if (d->send_begin == 0){
                    #ifdef DEBUG
                    cout << "!HetNet_toc_Sim set_send_recieve2()\n";
                    printf("d.bs, i, d_direction: %d, %d, %d\n", (*d->bs).id, (*i).id, d->direction);
                    printf("Link_list.size(): %d\n", Link_list.size());
                    #endif // DEBUG
                    if (d->direction == 0){
                        (*i).gen_link(d->bs, i, 0);
                    }
                    if (d->direction == 1){
                        (*i).gen_link(d->bs, i, 1);
                    }
                }
            }
        }
}

void Simulator::add_link(Link *x){
        Link_list.push_back(x);
        //#print("add_link:"+str(x.get_s().get_name())+", "+str(x.get_d().get_name()))
}


void Simulator::move_file(vector<double> position_list){
        //print("move_step:"+str(self.time_step//10))
        int ind = time_step / 10;
        for (int i=0; i< 100; i++){
            if ((i % 2 == 0) && (i/2 < UE_list.size())){
                //##print("i_env:"+str(i_env))
                (*UE_list[i / 2]).set_xposition(position_list[i]);
                (*UE_list[i / 2]).set_yposition(position_list[i+1]);
            }
        }
}


void Simulator::reset_throughput(){

        throughput_ul_list.clear();
        throughput_dl_list.clear();
        throughput_ul_mbs_list.clear();
        throughput_dl_mbs_list.clear();
        throughput_ul_sbs_list.clear();
        throughput_dl_sbs_list.clear();
}        
        
void Simulator::sum_UE_throughput(){

       
        //#print("throughput_ul_list:"+str(self.throughput_ul_list))
        //#print("throughput_dl_list:"+str(self.throughput_dl_list))
        
        int len;
        if (!throughput_ul_list.empty()){
            #ifdef DEBUG
            cout << "!HetNet_toc_Sim sum_UE_throughput()1\n";
            //printf("throughput_ul_list.size():%d\n", throughput_ul_list.size());
            #endif // DEBUG
            //#ans1 = sum(self.throughput_ul_list)
            sort(throughput_ul_list.begin(), throughput_ul_list.end(), greater<double>());
            #ifdef DEBUG
            //for (int i=0; i<throughput_ul_list.size(); i++){
            //    printf("throughput_ul: %f", throughput_ul_list[i]);
            //}
            #endif // DEBUG
            len = throughput_ul_list.size();
            printf("throughput_ul: %f, %f, %f\n", throughput_ul_list[len/4], throughput_ul_list[len/2], throughput_ul_list[len*3/4]);
//            printf("throughput_ul: %f, %f, %f, ", throughput_ul_list[0], throughput_ul_list[len/2], throughput_ul_list[len]);
        }
        else{
            printf("throughput_ul: %f, %f, %f, ", 0.0, 0.0, 0.0);        
        }

        if (!throughput_dl_list.empty()){
            #ifdef DEBUG
            cout << "!HetNet_toc_Sim sum_UE_throughput()2\n";
            #endif // DEBUG
            //#ans2 = sum(self.throughput_dl_list)
            sort(throughput_dl_list.begin(), throughput_dl_list.end(), greater<double>());
            len = throughput_dl_list.size();
            printf("throughput_dl: %f, %f, %f, ", throughput_dl_list[len/4], throughput_dl_list[len/2], throughput_dl_list[len*3/4]);
        }        
        else{
            printf("throughput_dl: %f, %f, %f, ", 0.0, 0.0, 0.0);        
        }

        if (!throughput_ul_mbs_list.empty()){
            #ifdef DEBUG
            cout << "!HetNet_toc_Sim sum_UE_throughput()3\n";
            #endif // DEBUG
            //#ans3 = sum(self.throughput_ul_mbs_list)
            sort(throughput_ul_mbs_list.begin(), throughput_ul_mbs_list.end(), greater<double>());
            len = throughput_ul_mbs_list.size();
            printf("throughput_ul_mbs: %f, %f, %f, ", throughput_ul_mbs_list[len/4], throughput_ul_mbs_list[len/2], throughput_ul_mbs_list[len*3/4]);
        }
        else{
            printf("throughput_ul_mbs: %f, %f, %f, ", 0.0, 0.0, 0.0);        
        }

        if (!throughput_dl_mbs_list.empty()){
            #ifdef DEBUG
            cout << "!HetNet_toc_Sim sum_UE_throughput()4\n";
            #endif // DEBUG
            //#ans4 = sum(self.throughput_dl_mbs_list)
            sort(throughput_dl_mbs_list.begin(), throughput_dl_mbs_list.end(), greater<double>());
            len = throughput_dl_mbs_list.size();
            printf("throughput_dl_mbs: %f, %f, %f, ", throughput_dl_mbs_list[len/4], throughput_dl_mbs_list[len/2], throughput_dl_mbs_list[len*3/4]);
        }        
        else{
            printf("throughput_dl_mbs: %f, %f, %f, ", 0.0, 0.0, 0.0);        
        }

        if (!throughput_ul_sbs_list.empty()){
            #ifdef DEBUG
            cout << "!HetNet_toc_Sim sum_UE_throughput()5\n";
            #endif // DEBUG
            //#ans5 = sum(self.throughput_ul_sbs_list)
            sort(throughput_ul_sbs_list.begin(), throughput_ul_sbs_list.end(), greater<double>());
            len = throughput_ul_sbs_list.size();
            printf("throughput_ul_sbs: %f, %f, %f, ", throughput_ul_sbs_list[len/4], throughput_ul_sbs_list[len/2], throughput_ul_sbs_list[len*3/4]);
        }
        else{
            printf("throughput_ul_sbs: %f, %f, %f, ", 0.0, 0.0, 0.0);        
        }

        if (!throughput_dl_sbs_list.empty()){
            #ifdef DEBUG
            cout << "!HetNet_toc_Sim sum_UE_throughput()6\n";
            #endif // DEBUG
            //#ans6 = sum(self.throughput_dl_sbs_list)
            sort(throughput_dl_sbs_list.begin(), throughput_dl_sbs_list.end(), greater<double>());
            len = throughput_dl_sbs_list.size();
            printf("throughput_dl_sbs: %f, %f, %f\n", throughput_dl_sbs_list[len/4], throughput_dl_sbs_list[len/2], throughput_dl_sbs_list[len*3/4]);
        }
        else{
            printf("throughput_dl_sbs: %f, %f, %f\n", 0.0, 0.0, 0.0);        
        }
            
        reset_throughput();
        
}
