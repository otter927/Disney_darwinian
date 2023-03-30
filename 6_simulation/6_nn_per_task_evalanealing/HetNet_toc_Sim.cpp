#include <stdio.h>
#include <string> 
#include <cstring> 
#include <cmath> 
#include <vector>
#include <list>
#include <iostream>
#include <tuple>
#include<iterator>
#include<random>
#include<algorithm>
#include <time.h>
#include <cstdlib>


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

    
Simulator::Simulator(vector<double> &position_list, vector<float> &ul_dl_rate_vector_tmp, double alpha_tmp){
        arrival_rate = 0.1;
        time_step = 0;
        time_slot = 0;
        
        
        for (int i=0; i<N; i++){
            output_vector.push_back(0.0);
        }

        if (ul_dl_rate_vector_tmp.size() == 0){

            for (int i=0; i<input_size*16; i++){
                ul_dl_rate_vector.push_back(0.5);
            }
        }else{
        
            for (int i=0; i<ul_dl_rate_vector_tmp.size(); i++){
                ul_dl_rate_vector.push_back(ul_dl_rate_vector_tmp[i]);
            }
        }
        printf("ul_dl_rate_vector: %d\n", ul_dl_rate_vector.size());
        //for (int i=0; i<ul_dl_rate_vector.size(); i++){
        //    printf("%f ", ul_dl_rate_vector[i]);
        //}
        //printf("\n");
        
        //exit(0);
        
        alpha = alpha_tmp;
        //printf("alpha_tmp, alpha: %f, %f\n", alpha_tmp, alpha);
        random_device rd; // uniformly-distributed integer random number generator
        double lamda = 1.0; //0.5, 1.0; 10.0; //0.1, 0.3, 0.5

        //printf("position_list.size():%d\n", position_list.size());
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

        tuple<double, double, double> tuple_s = (*lbs).get_xyz();
        tuple<double, double, double> tuple_d = (*lue).get_xyz();
        
        
        #ifdef DEBUG
        printf("bs x y, ue x y: %f, %f, %f, %f\n", get<0>(tuple_s), get<1>(tuple_s), get<0>(tuple_d), get<1>(tuple_d));
        printf("bs_id, ue_id : %d, %d\n", (*lbs).id, (*lue).id);
        #endif


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
            //ans = 131.1+42.8 * log10(d); //#NLOS
            #ifdef DEBUG
            printf("dis, pathloss: %f, %f\n", d, ans);
            #endif
        } else if ((*lbs).get_type() == "SBS"){
            //#print("SBS-UE")
            ans = 103.8 + 20.9 * log10(d);
            //ans = 145.4+37.5 * log10(d); //#NLOS
            #ifdef DEBUG
            printf("dis, pathloss: %f, %f\n", d, ans);
            #endif
        }
                
        return ans;
    }
    
double Simulator::path_loss_bs2bs(BS *lbs, BS *lbs2){ //3GPP, LOS, d in km
        double d, ans;
        string s_t, r_t;

        //#ifdef DEBUG
        //cout << "!HetNet_toc_Sim path_loss1\n";
        //#endif // DEBUG

        d = calc_d((*lbs).get_xyz(), (*lbs2).get_xyz()) / 1000;

        //#ifdef DEBUG
        //cout << "!HetNet_toc_Sim path_loss2\n";
        //#endif // DEBUG

        if (d<= 0.01){
            d = 0.01;
        }
        //#ifdef DEBUG
        //printf("d2: %lf", d);
        //#endif // DEBUG
        
       
        if (((*lbs).get_type() == "MBS") || ((*lbs2).get_type() == "MBS")){
            ans = 100.7+23.5 * log10(d);
            //ans = 125.2+36.3 * log10(d); //#NLOS
            #ifdef DEBUG
            printf("dis, pathloss: %f, %f\n", d, ans);
            #endif
        } else{
            if (d < 2/3){
                //#print("SBS-UE")
                ans = 98.4 + 20 * log10(d);
            } else{
                ans = 101.9 + 40 * log10(d);        
            }
            //ans = 169.36 + 40 * log10(d); //#NLOS
            #ifdef DEBUG
            printf("dis, pathloss: %f, %f\n", d, ans);
            #endif
        }
                
        return ans;
    }


double Simulator::path_loss_ue2ue(UE *lue, UE *lue2){ //3GPP, LOS, d in km
        double d, ans;
        string s_t, r_t;

        //#ifdef DEBUG
        //cout << "!HetNet_toc_Sim path_loss1\n";
        //#endif // DEBUG

        d = calc_d((*lue).get_xyz(), (*lue2).get_xyz()) / 1000;

        //#ifdef DEBUG
        //cout << "!HetNet_toc_Sim path_loss2\n";
        //#endif // DEBUG

        if (d<= 0.01){
            d = 0.01;
        }
        //#ifdef DEBUG
        //printf("d2: %lf", d);
        //#endif // DEBUG
        
        if (d<=0.05){
            ans = 98.45+20*log10(d);
        } else {
            ans = 175.78+40*log10(d);        
        }
        //no #NLOS
        #ifdef DEBUG
        printf("ue2ue, dis, pathloss: %f, %f\n", d, ans);
        #endif
                
        return ans;
    }
    
double Simulator::shadowing(BS *lbs, UE *lue, int direction){
        //int shadowing_MBS_MBS = 8; //#dB
        int shadowing_UE_MBS = 8;
        int shadowing_SBS_UE = 10;
        //int shadowing_UE_UE = 12;
        //int shadowing_MBS_SBS = 6;
        //int shadowing_SBS_SBS = 6;

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


double Simulator::shadowing_bs2bs(BS *lbs, BS *lbs2){
        //int shadowing_MBS_MBS = 8; //#dB
        //int shadowing_UE_MBS = 8;
        //int shadowing_SBS_UE = 10;
        //int shadowing_UE_UE = 12;
        int shadowing_MBS_SBS = 6;
        int shadowing_SBS_SBS = 6;

        //#ifdef DEBUG
        //printf("d2: %d\n", (*lbs).id);
        //printf("d2: %f\n", (*lbs).x_position);
        //printf("d2: %s\n", (*lbs).BStype.c_str());
        //cout << "!HetNet_toc_Sim shadowing1\n";
        //#endif // DEBUG
        if (((*lbs).get_type() == "SBS") && ((*lbs2).get_type() == "SBS")){
            //#ifdef DEBUG
            //cout << "!HetNet_toc_Sim shadowing1a\n";
            //#endif // DEBUG
            return shadowing_SBS_SBS;
        }else{
            return shadowing_MBS_SBS;
        }
    }


double Simulator::shadowing_ue2ue(UE *lue, UE *lue2){
        //int shadowing_MBS_MBS = 8; //#dB
        //int shadowing_UE_MBS = 8;
        //int shadowing_SBS_UE = 10;
        int shadowing_UE_UE = 12;
        //int shadowing_MBS_SBS = 6;
        //int shadowing_SBS_SBS = 6;

        //#ifdef DEBUG
        //printf("d2: %d\n", (*lbs).id);
        //printf("d2: %f\n", (*lbs).x_position);
        //printf("d2: %s\n", (*lbs).BStype.c_str());
        //cout << "!HetNet_toc_Sim shadowing1\n";
        //#endif // DEBUG
        return shadowing_UE_UE;
    }


double Simulator::signal(BS *lbs, UE *lue, int direction){

        double ans1, ans2, ans3, ans4, ans5, ans6, ans7, ans;

        //#ifdef DEBUG
        //cout << "!HetNet_toc_Sim signal1\n";
        //#endif // DEBUG

        double d = calc_d((*lbs).get_xyz(), (*lue).get_xyz()) / 1000;
        #ifdef DEBUG
        printf("distance: %f\n", d);
        #endif


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
            #ifdef DEBUG
            printf("path loss ul, %f\n", ans3);
            #endif
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

            #ifdef DEBUG
            printf("path loss dl, %f\n", ans3);
            #endif
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

        ans = ans1 + ans2 - ans5 - ans4 - ans3;
        #ifdef DEBUG
        printf("ans, ans1, ans2, ans5, ans4, ans3: %f, %f, %f, %f, %f, %f\n", ans, ans1, ans2, ans5, ans4, ans3);
        #endif // DEBUG
        //ans = ans1 + ans2 + ans6 - ans5 - ans7 - ans4 - ans3;
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

double Simulator::signal_bs2bs(BS *lbs, BS *lbs2){

        double ans1, ans2, ans3, ans4, ans5, ans6, ans7, ans;

        ans1 = (*lbs).get_TX_power();
        ans2 = (*lbs2).get_antenna_gain();
        ans5 = (*lbs2).get_noise_figure();
        ans4 = shadowing_bs2bs(lbs, lbs2);
        ans3 = path_loss_bs2bs(lbs, lbs2);       

        ans = ans1 + ans2 - ans5 - ans4 - ans3;
        
        return d2w(ans);
        
    }      
        
double Simulator::signal_ue2ue(UE *lue, UE *lue2){

        double ans1, ans2, ans3, ans4, ans5, ans6, ans7, ans;

        ans1 = (*lue).get_TX_power();
        ans2 = (*lue2).get_antenna_gain();
        ans5 = (*lue2).get_noise_figure();
        ans4 = shadowing_ue2ue(lue, lue2);
        ans3 = path_loss_ue2ue(lue, lue2);       

        ans = ans1 + ans2 - ans5 - ans4 - ans3;
        
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
                (*i).set_sinr(w2d(sinr));
                
                #ifdef DEBUG
                cout << "!HetNet_toc_Sim capacity_calculation5\n";
                printf("capacity2: %e\n", capacity);
                #endif // DEBUG
                
            } else {
                #ifdef DEBUG
                cout << "!HetNet_toc_Sim else\n";
                #endif // DEBUG
                (*i).set_capacity(0);
                (*i).set_sinr(0);
            }
            
        #ifdef DEBUG
        cout << "!HetNet_toc_Sim num_SINR\n";
        #endif // DEBUG
        //##print("num_SINR:"+str(self.time_slot)+", "+str(num_SINR))
        
        }
    }            


double Simulator::capacity_calculation2(){


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

                

        for (Link *i : Link_list) {        



            if ((*i).is_active() == true){
                #ifdef DEBUG
                printf("bs, ue, direction:%d, %d, %d\n", (*(*i).get_bs()).id, (*(*i).get_ue()).id, (*i).get_direction());
                #endif // DEBUG
                sinr_upper = signal((*i).get_bs(), (*i).get_ue(), (*i).get_direction());
                #ifdef DEBUG
                printf("sinr_upper:%8.3e\n", sinr_upper);
                #endif // DEBUG

                interf = 0;
                interf_bs_list.push_back((*i).get_bs());
                interf_bs_cell_list.push_back((*(*i).get_bs()).get_cell_id());

                for (BS *bs: BS_list) {
                    if ((*bs).id != (*(*i).get_bs()).id){
                        if ((*bs).get_state() == 1){ // if nearby BS is DL
                            if ((*i).get_direction() == 0){ // if target BS is UL than interf at target BS
                                interf_tmp = signal_bs2bs(bs, (*i).get_bs());
                                #ifdef DEBUG
                                printf("interf_tmp bs:%8.3e\n", interf_tmp);
                                #endif // DEBUG
                                interf += interf_tmp;
                            } else{ // if target BS is DL than interf at target UE
                                interf_tmp = signal(bs, (*i).get_ue(), 1);                        
                                #ifdef DEBUG
                                printf("interf_tmp ue:%8.3e\n", interf_tmp);
                                #endif // DEBUG
                                interf += interf_tmp;
                            }
                        }
                    }
                }

                for (Link *j : Link_list) {
                    if ((*(*j).get_bs()).id != (*(*i).get_bs()).id){
                        if ((*j).direction == 0){ // if nearby UE is UL
                            if ((*i).get_direction() == 0){ // if target BS is UL than interf at target BS
                                interf_tmp = signal((*i).get_bs(), (*j).get_ue(), 0);                        
                                #ifdef DEBUG
                                printf("interf_tmp link bs:%8.3e\n", interf_tmp);
                                #endif // DEBUG
                                if ((*(*j).get_bs()).id != 7){
                                    interf += interf_tmp;
                                }else{
                                    interf += interf_tmp;                                
                                }

                            } else{ // if target BS is DL than interf from nearby UE can be ignored
                                interf_tmp = signal_ue2ue((*j).get_ue(), (*i).get_ue());                        
                                #ifdef DEBUG
                                printf("interf_tmp link ue:%8.3e\n", interf_tmp);
                                #endif // DEBUG
                                if ((*(*j).get_bs()).id != 7){
                                    interf += interf_tmp;
                                }else{
                                    interf += interf_tmp;                                
                                }    
                            }
                        }
                    
                    }
                
                }        

                noise_tmp_db = noise_floor;
                noise_tmp = d2w(noise_tmp_db);
                sinr_bottom = interf + noise_tmp;
                sinr = sinr_upper / sinr_bottom;
                #ifdef DEBUG
                printf("sinr, sinr_upper, sinr_bottom: %8.3e, %8.3e , %8.3e\n", sinr, sinr_upper, sinr_bottom);
                #endif // DEBUG

                num_SINR = num_SINR + 1;
                
                capacity = bandwidth * log2(1.0 + sinr); //!!!!!!!!!!!!!!!log2 kokodake

                capacity = 0.01 * 0.1 * capacity; //#10ms 1subframe
                
                capacity = capacity * 100; //####set 1 timestep -> 1s
                
                (*i).set_capacity(capacity);
                (*i).set_sinr(w2d(sinr));
                
                
            } else {
                #ifdef DEBUG
                cout << "!HetNet_toc_Sim else\n";
                #endif // DEBUG
                (*i).set_capacity(0);
                (*i).set_sinr(0);
            }
            
        
        }
    }            

double Simulator::Uniform( void ){
	return ((double)rand()+1.0)/((double)RAND_MAX+2.0);
}


double Simulator::rand_normal( double mu, double sigma ){
    	double z=sqrt( -2.0*log(Uniform()) ) * sin( 2.0*M_PI*Uniform() );
    	return mu + sigma*z;
}

double Simulator::capacity_calculation3(vector<vector<vector<double>>> & sinr_map_all, int write_flag){

        #ifdef DEBUG
        printf("HetNet_toc_Sim calculation3!\n");
        #endif // DEBUG

        vector<int> bs_state_list(8, 0);
        int sinr_index = 0;
        for (BS *bs: BS_list){
            int state_tmp = (*bs).get_state();
            #ifdef DEBUG
            printf("state_tmp: %d: %d, ", (*bs).id, state_tmp);
            #endif // DEBUG
            bs_state_list[(*bs).id] = state_tmp;
            sinr_index = sinr_index + state_tmp * (int) pow(2.0, (7.0 - (*bs).id));
        }
        //#ifdef DEBUG
        printf("sinr_index: %d\n", sinr_index);
        //#endif // DEBUG
 
        //printf("sinr_map_all[0].size():%d\n", sinr_map_all[0].size());
        //printf("sinr_map_all[0][0].size():%d\n", sinr_map_all[0][0].size());
        for (Link *i : Link_list) {        
            if ((*i).is_active() == true){
	      //printf("first BS.id: %d\n", (*(*i).get_bs()).id);
                if (((*((*i).get_ue())).x_position < 0.01) && ((*((*i).get_ue())).y_position < 0.01)){
                    (*i).set_capacity(0);
                    (*i).set_sinr(0);                    
                }else{            
                    //int x_pos = (int) ((*((*i).get_ue())).x_position - 4000)/10;
                    //int y_pos = (int) ((*((*i).get_ue())).y_position - (-41100))/10;
                    int x_pos = (int) ((*((*i).get_ue())).x_position - 3900)/10;
                    int y_pos = (int) ((*((*i).get_ue())).y_position - (-41200))/10;
                    if (x_pos < 0) x_pos = 0;
                    if (y_pos < 0) y_pos = 0;
                    if (x_pos > 89) x_pos = 89;//90
                    if (y_pos > 89) y_pos = 89;//90
                    #ifdef DEBUG
                    printf("x_pos, y_pos: %d, %d\n", x_pos, y_pos);
                    #endif // DEBUG
                    double sinr_db, capacity;
                    if ((*i).get_direction() == (*(*i).get_bs()).get_state()){
		      sinr_db = sinr_map_all[sinr_index][x_pos][y_pos] - rand_normal(0.0,1.0);
                        capacity = bandwidth * log2(1.0 + d2w(sinr_db)); //!!!!!!!!!!!!!!!log2 kokodake
                        capacity = 0.01 * 0.1 * capacity; //#10ms 1subframe
                        capacity = capacity * 100; //#### -> 1s
                        capacity = capacity * 60; //####set 1 timestep -> 1min
                        //#ifdef DEBUG
			if (write_flag == 1){
			  if ((ps_id % 1000) == 0){
                            printf("capacity, sinr, direction, BS.id: %f, %f, %d, %d, %d\n", capacity, sinr_db, (*i).get_direction(), (*(*i).get_bs()).id, ps_id);
			  }
			}
                        //#endif // DEBUG
                        (*i).set_capacity(capacity);
                        (*i).set_sinr(sinr_db);
                    } else {
                        (*i).set_capacity(0);
                        (*i).set_sinr(0);
                    }
                }
            }
        }
        //exit(0);
    }            


double Simulator::execute_sim_darwinian(vector<double> &position_list){

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
        
        NN = 2;

        time_step = 0;
        time_slot = 0;
        double reward;
        double reward_BS, reward_UE;
        Darwinian_deme cDeme(NN); //NN=2
        vector<DEME> deme_list;

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

        vector<float> w(NN);
        vector<float> v(N);
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


            reward_BS = 0;
            for (BS *bs: BS_list){
                ans = (*bs).get_bs_sentdata_total();
                #ifdef DEBUG
                printf("ans.first: %f", ans.first);
                printf("ans.second: %f", ans.second);
                #endif // DEBUG
                reward_BS = reward_BS + ans.first;
                reward_BS = reward_BS + ans.second;
            }
             
            double ans_tmp;
            double c_ans = 0;
            reward_UE = 0;
            double reward_UE_upper = 0;
            double reward_UE_lower = 0;
            for (UE *ue: UE_list){
                if ((*ue).inside_BS != NULL){
                    ans_tmp = (*ue).get_ue_sentdata_total();
                
                    reward_UE_upper = reward_UE_upper + ans_tmp;
                    reward_UE_lower = reward_UE_lower + ans_tmp * ans_tmp;
                    c_ans = c_ans + 1;
                    #ifdef DEBUG
                    printf("ans_tmp: %f", ans_tmp);
                    #endif // DEBUG
                }
            }

            printf("\n!!HetNet_toc_Sim rewardBS, UE_list.size, data_size, %f, %d, %f\n", reward_BS, c_ans, (*UE_list[0]).data_block);
            reward_BS = reward_BS / (c_ans * (*UE_list[0]).data_block * (*UE_list[0]).data_size);

            printf("\n!!HetNet_toc_Sim rewardUE, c_ans, reward_UE_upper, reward_UE_lower, %f, %f, %f\n", c_ans, reward_UE_upper, reward_UE_lower);
            if (c_ans != 0){
                reward_UE = (reward_UE_upper * reward_UE_upper) / (c_ans * reward_UE_lower);
            }else{
                reward_UE = 0;
            }
            

            reward = alpha * reward_BS + (1.0 - alpha) * reward_UE;
            #ifdef DEBUG
            printf("reward: %f, %f, %f\n", reward_BS, reward_UE, reward);
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
            
        vector<float> best_output = cDeme.evolution_gen_calcbestfitness(time_slot);
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


            reward_BS = 0;
            for (BS *bs: BS_list){
                ans = (*bs).get_bs_sentdata_total();
                #ifdef DEBUG
                printf("ans.first: %f", ans.first);
                printf("ans.second: %f", ans.second);
                #endif // DEBUG
                reward_BS = reward_BS + ans.first;
                reward_BS = reward_BS + ans.second;
            }
            
            double ans_tmp;
            double c_ans = 0;
            reward_UE = 0;
            double reward_UE_upper = 0;
            double reward_UE_lower = 0;
            for (UE *ue: UE_list){
                if ((*ue).inside_BS != NULL){
                    ans_tmp = (*ue).get_ue_sentdata_total();
                
                    reward_UE_upper = reward_UE_upper + ans_tmp;
                    reward_UE_lower = reward_UE_lower + ans_tmp * ans_tmp;
                    c_ans = c_ans + 1;
                    #ifdef DEBUG
                    printf("ans_tmp: %f", ans_tmp);
                    #endif // DEBUG
                }
            }

            printf("\n!!HetNet_toc_Sim rewardBS, UE_list.size, data_size, %f, %d, %f\n", reward_BS, c_ans, (*UE_list[0]).data_block);
            reward_BS = reward_BS / (c_ans * (*UE_list[0]).data_block * (*UE_list[0]).data_size);

            printf("\n!!HetNet_toc_Sim rewardUE, c_ans, reward_UE_upper, reward_UE_lower, %f, %f, %f\n", c_ans, reward_UE_upper, reward_UE_lower);
            if (c_ans != 0){
                reward_UE = (reward_UE_upper * reward_UE_upper) / (c_ans * reward_UE_lower);
            }else{
                reward_UE = 0;
            }
            

            reward = alpha * reward_BS + (1.0 - alpha) * reward_UE;
            #ifdef DEBUG
            printf("reward: %f, %f, %f\n", reward_BS, reward_UE, reward);
            #endif // DEBUG
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


        reward_BS = 0;
        for (BS *bs: BS_list){
            ans = (*bs).get_bs_sentdata_total();
            #ifdef DEBUG
            printf("ans.first: %f", ans.first);
            printf("ans.second: %f", ans.second);
            #endif // DEBUG
            reward_BS = reward_BS + ans.first;
            reward_BS = reward_BS + ans.second;
        }
            
        double ans_tmp;
        double c_ans = 0;
        reward_UE = 0;
        double reward_UE_upper = 0;
        double reward_UE_lower = 0;
        for (UE *ue: UE_list){
            if ((*ue).inside_BS != NULL){
                ans_tmp = (*ue).get_ue_sentdata_total();
                
                reward_UE_upper = reward_UE_upper + ans_tmp;
                reward_UE_lower = reward_UE_lower + ans_tmp * ans_tmp;
                c_ans = c_ans + 1;
                #ifdef DEBUG
                printf("ans_tmp: %f", ans_tmp);
                #endif // DEBUG
            }
        }

        printf("\n!!HetNet_toc_Sim rewardBS, UE_list.size, data_size, %f, %d, %f\n", reward_BS, c_ans, (*UE_list[0]).data_block);
        reward_BS = reward_BS / (c_ans * (*UE_list[0]).data_block * (*UE_list[0]).data_size);

        printf("\n!!HetNet_toc_Sim rewardUE, c_ans, reward_UE_upper, reward_UE_lower, %f, %f, %f\n", c_ans, reward_UE_upper, reward_UE_lower);
        if (c_ans != 0){
            reward_UE = (reward_UE_upper * reward_UE_upper) / (c_ans * reward_UE_lower);
        }else{
            reward_UE = 0;
        }
            

        reward = alpha * reward_BS + (1.0 - alpha) * reward_UE;
        #ifdef DEBUG
        printf("reward: %f, %f, %f\n", reward_BS, reward_UE, reward);
        #endif // DEBUG
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
                    
                    if (old_bs != NULL){
                        (*old_bs).remove_inside_UE(ue);
                    }
                    
                    #ifdef DEBUG
                    here = clock();
                    printf("!!HetNet_toc_Sim execute_sim_darwinian711, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    printf("BS id: %d", (*old_bs).id);
                    #endif // DEBUG

                    vector<UE *> UE_tmp;
                    if (old_bs != NULL){
                        UE_tmp = (*old_bs).get_connecting_UE_ul();
                    }
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
                        bool conn;
                        if (new_bs != NULL){
                            conn = (*new_bs).set_connecting_UE_ul(ue);
                        }else{
                            conn = false;
                        }                        //#print("connect:"+str(conn))
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

                    if (old_bs != NULL){
                        UE_tmp = (*old_bs).get_connecting_UE_dl();
                    }
                    UE_bool = false;
                    for(auto iter = UE_tmp.begin(); iter != UE_tmp.end(); ++iter){
                        if((*(*iter)).id == (*ue).id){
                            UE_bool = true;
                        }
                    }
                    if (UE_bool){
                        (*old_bs).remove_connecting_UE_dl(ue);
                        bool conn;
                        if (new_bs != NULL){
                            conn = (*new_bs).set_connecting_UE_dl(ue);
                        }else{
                            conn = false;
                        }                        //#print("connect:"+str(conn))
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

                    if (new_bs != NULL){
                        (*new_bs).set_inside_UE(ue);
                    }
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

double Simulator::execute_sim_random(vector<double> &position_list, vector<vector<vector<double>>> & sinr_map_all){

        //NN = 1;
        
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
            printf("UE ID: %d\n",ue->id);
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


////////////////
        
        //file_num = file_num_tmp;
        file_num = 1;

        #ifdef DEBUG
        clock_t start, here;
        start = clock();
        #endif // DEBUG



        #ifdef DEBUG
        here = clock();
        printf("!HetNet_toc_Sim execute_sim_darwinian1, %.2f\n", (double)(here - start)/1000);
        start = here;
        #endif // DEBUG


        time_step = 0;
        time_slot = 0;
        double reward;
        double reward_BS, reward_UE;
        Darwinian_deme cDeme(NN);
        vector<DEME> deme_list;

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


        #ifdef DEBUG
        printf("ul_dl_rate_vector:");
        for (int i=0; i++; i<64){
            printf("%f ", ul_dl_rate_vector[i]);        
        }
        printf("\n");
        #endif

        for (BS *bs : BS_list){
            //float ul_rate_tmp = (*bs).get_ul_rate_inside_UE();
            //float dl_rate_tmp = 1.0 - ul_rate_tmp;
            float ul_tmp = (*bs).get_ul_inside_UE();
            float dl_tmp = (*bs).get_dl_inside_UE();
            #ifdef DEBUG
            printf("ul_rate, dl_rate: %f, %f\n", ul_rate_tmp, dl_rate_tmp);
            #endif
            ul_dl_rate_vector.erase(ul_dl_rate_vector.begin());
            ul_dl_rate_vector.erase(ul_dl_rate_vector.begin());
            //ul_dl_rate_vector.push_back(ul_rate_tmp);
            //ul_dl_rate_vector.push_back(dl_rate_tmp);
            ul_dl_rate_vector.push_back(ul_tmp);
            ul_dl_rate_vector.push_back(dl_tmp);
        }
        

        //#ifdef DEBUG
        //printf("ul_dl_rate_vector:");
        //for (int i=0; i++; i<64){
        //    printf("%f ", ul_dl_rate_vector[i]);        
        //}
        //printf("\n");
        //#endif

        //cDeme.evolution_initialization(time_step);
        //cDeme.evolution_gen_environment(time_step);
        //deme_list = cDeme.evolution_gen_update(time_step);
           
    

        for (int j=0; j< 10; j++){
            time_slot = time_step % 10;

            #ifdef DEBUG
            printf("BS_list, %d\n", BS_list.size());
            #endif // DEBUG

            for (BS *bs : BS_list){
                (*bs).set_state(rand()%2);
                #ifdef DEBUG
                here = clock();
                printf("!!HetNet_toc_Sim execute_sim_darwinian61, %.2f\n", (double)(here - start)/1000);
                start = here;
                printf("id state timestep %d, %d, %d\n", (*bs).id, (*bs).get_state(), time_step);
                #endif // DEBUG
            }                    

            #ifdef DEBUG
            printf("!!HetNet_toc_Sim execute_sim_darwinian6111");
            #endif // DEBUG


            capacity_calculation3(sinr_map_all, 0);        

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


//
        for (UE *ue : UE_list){
            (*ue).clear_links_ul();
            (*ue).clear_links_dl();
        }
        
        #ifdef DEBUG
        here = clock();
        printf("!!HetNet_toc_Sim execute_sim_darwinian6, %.2f\n", (double)(here - start)/1000);
        start = here;
        #endif // DEBUG

        #ifdef DEBUG
        printf("BS_list.size(): %d\n", BS_list.size());
        #endif // DEBUG

        pair<double, double> ans;        
        reward_BS = 0;
        printf("ans.bs: ");
        for (BS *bs: BS_list){
            ans = (*bs).get_bs_sentdata_total();
            //#ifdef DEBUG
            printf("%f %f ", ans.first, ans.second);
            //#endif // DEBUG
            reward_BS = reward_BS + ans.first;
            reward_BS = reward_BS + ans.second;
        }
        printf("\n");


        int inside_UE_num;
        printf("ans.binsideu: ");
        for (BS *bs: BS_list){
            inside_UE_num = (*bs).get_inside_UE_num();
            //#ifdef DEBUG
            printf("%i ", inside_UE_num);
        }
        printf("\n");


            
        double ans_tmp;
        double c_ans = 0;
        reward_UE = 0;
        double reward_UE_upper = 0;
        double reward_UE_lower = 0;
        printf("ans.ue: ");
        for (UE *ue: UE_list){
            if ((*ue).inside_BS != NULL){
                ans_tmp = (*ue).get_ue_sentdata_total();
            
                reward_UE_upper = reward_UE_upper + ans_tmp;
                reward_UE_lower = reward_UE_lower + ans_tmp * ans_tmp;
                c_ans = c_ans + 1;
                //#ifdef DEBUG
                printf("%f ", ans_tmp);
                //#endif // DEBUG
            }
        }
        printf("\n");

        printf("\n!!HetNet_toc_Sim rewardBS, UE_list.size, data_size, %f, %d, %f\n", reward_BS, c_ans, (*UE_list[0]).data_block);
        reward_BS = reward_BS / (c_ans * (*UE_list[0]).data_block * (*UE_list[0]).data_size);

        printf("\n!!HetNet_toc_Sim rewardUE, c_ans, reward_UE_upper, reward_UE_lower, %f, %f, %f\n", c_ans, reward_UE_upper, reward_UE_lower);
        if (c_ans != 0){
            reward_UE = (reward_UE_upper * reward_UE_upper) / (c_ans * reward_UE_lower);
        }else{
            reward_UE = 0;
        }
            

        reward = alpha * reward_BS + (1.0 - alpha) * reward_UE;
        //#ifdef DEBUG
        printf("reward: %f, %f, %f\n", reward_BS, reward_UE, reward);
        //#endif // DEBUG
        //print("finalreward:\t"+str(reward)+", "+str(self.best_output))

        #ifdef DEBUG
        printf("!!HetNet_toc_Sim execute_sim_darwinian61112\n");
        #endif // DEBUG


        for (UE *ue : UE_list){
            ue->data_list.clear();
        }
//exit(0);
////////////////////////////////
        
        //#move xy
        //#print("len UE_list:"+str(len(self.UE_list)))
        move_file(position_list);  //#stop move
//exit(0);
        #ifdef DEBUG
        printf("!!HetNet_toc_Sim execute_sim_darwinian61113\n");
        #endif // DEBUG
        for (UE *ue : UE_list){
            (*ue).renew_time_stamp();
        }
        #ifdef DEBUG
        printf("!!HetNet_toc_Sim execute_sim_darwinian61114\n");
        #endif // DEBUG

        #ifdef DEBUG
        here = clock();
        printf("!HetNet_toc_Sim execute_sim_darwinian7, %.2f\n", (double)(here - start)/1000);
        start = here;
        #endif // DEBUG

        //#move change bs
        if (true){

            BS *old_bs;
            BS *new_bs;

            #ifdef DEBUG
            printf("!HetNet_toc_Sim execute_sim_darwinian71-, %d\n", UE_list.size());
            #endif // DEBUG
            
            for (UE *ue : UE_list){
                #ifdef DEBUG
                printf("!HetNet_toc_Sim execute_sim_darwinian71-1, %d\n", ue->id);
                #endif // DEBUG
                old_bs = (*ue).get_inside_BS();
                #ifdef DEBUG
                printf("!HetNet_toc_Sim execute_sim_darwinian71-2, %d\n", old_bs->id);
                #endif // DEBUG
                new_bs = (*ue).find_BS(old_bs);
                #ifdef DEBUG
                printf("!HetNet_toc_Sim execute_sim_darwinian71-3, %d\n", new_bs->id);
                #endif // DEBUG
                //#print("new_BS:"+str(new_bs.get_name())+", "+str(i.get_name())+", "+str(self.time_step))

                #ifdef DEBUG
                here = clock();
                printf("!HetNet_toc_Sim execute_sim_darwinian71, %.2f\n", (double)(here - start)/1000);
                start = here;
                #endif // DEBUG
                
//exit(0);
                if (old_bs != new_bs){
                    (*ue).set_connecting_BS(new_bs);
//exit(0);
                    (*ue).set_inside_BS(new_bs);

                    #ifdef DEBUG
                    here = clock();
                    printf("!HetNet_toc_Sim execute_sim_darwinian710, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    printf("BS id: %d", (*old_bs).id);
                    #endif // DEBUG
//exit(0);
                    if (old_bs != NULL){
                        (*old_bs).remove_inside_UE(ue);
                    }
//exit(0);
                    #ifdef DEBUG
                    here = clock();
                    printf("!HetNet_toc_Sim execute_sim_darwinian711, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    printf("BS id: %d", (*old_bs).id);
                    #endif // DEBUG

                    vector<UE *> UE_tmp;
                    if (old_bs != NULL){
                        UE_tmp = (*old_bs).get_connecting_UE_ul();
                    }
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
                    
//exit(0);


                    #ifdef DEBUG
                    here = clock();
                    printf("!HetNet_toc_Sim execute_sim_darwinian72, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    #endif // DEBUG

                    if (UE_bool){
                        (*old_bs).remove_connecting_UE_ul(ue);
                        bool conn;
                        if (new_bs != NULL){
                            conn = (*new_bs).set_connecting_UE_ul(ue);
                        }else{
                            conn = false;
                        }                        //#print("connect:"+str(conn))
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
                    
//exit(0);
                    #ifdef DEBUG
                    here = clock();
                    printf("!HetNet_toc_Sim execute_sim_darwinian73, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    #endif // DEBUG

                    if (old_bs != NULL){
                        UE_tmp = (*old_bs).get_connecting_UE_dl();
                    }
                    UE_bool = false;
                    for(auto iter = UE_tmp.begin(); iter != UE_tmp.end(); ++iter){
                        if((*(*iter)).id == (*ue).id){
                            UE_bool = true;
                        }
                    }
                    if (UE_bool){
                        (*old_bs).remove_connecting_UE_dl(ue);
                        bool conn;
                        if (new_bs != NULL){
                            conn = (*new_bs).set_connecting_UE_dl(ue);
                        }else{
                            conn = false;
                        }                        //#print("connect:"+str(conn))
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

                    if (new_bs != NULL){
                        (*new_bs).set_inside_UE(ue);
                    }
                    //#print("lendatalist:")
                    int env_t = 0;
                    for (Data * data : (*ue).data_list){
                    //for env_t, (tbs, _, _, _, _, _) in enumerate(i.data_list):
                        if (data->bs == old_bs){
                            (*ue).data_list[env_t]->bs = new_bs;
                        }
                        env_t = env_t + 1;
                    }
                    #ifdef DEBUG
                    here = clock();
                    printf("!HetNet_toc_Sim execute_sim_darwinian75, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    #endif // DEBUG
                }
                                            
            }

        }
        
             

}

double Simulator::execute_sim_random2(vector<double> &position_list){

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

        NN = 2;

        time_step = 0;
        time_slot = 0;
        double reward;
        double reward_BS, reward_UE;
        Darwinian_deme cDeme(NN);
        vector<DEME> deme_list;

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

        reward_BS = 0;
        printf("ans.bs ");
        for (BS *bs: BS_list){
            ans = (*bs).get_bs_sentdata_total();
            //#ifdef DEBUG
            printf("%f %f ", ans.first, ans.second);
            //#endif // DEBUG
            reward_BS = reward_BS + ans.first;
            reward_BS = reward_BS + ans.second;
        }
        printf("\n");
            
        double ans_tmp;
        double c_ans = 0;
        reward_UE = 0;
        double reward_UE_upper = 0;
        double reward_UE_lower = 0;
        printf("ans.ue: ");
        for (UE *ue: UE_list){
            if ((*ue).inside_BS != NULL){
                ans_tmp = (*ue).get_ue_sentdata_total();
                
                reward_UE_upper = reward_UE_upper + ans_tmp;
                reward_UE_lower = reward_UE_lower + ans_tmp * ans_tmp;
                c_ans = c_ans + 1;
                #ifdef DEBUG
                printf("%f ", ans_tmp);
                #endif // DEBUG
            }
        }
        printf("\n");

        printf("\n!!HetNet_toc_Sim rewardBS, UE_list.size, data_size, %f, %d, %f\n", reward_BS, c_ans, (*UE_list[0]).data_block);
        reward_BS = reward_BS / (c_ans * (*UE_list[0]).data_block * (*UE_list[0]).data_size);


        printf("\n!!HetNet_toc_Sim rewardUE, c_ans, reward_UE_upper, reward_UE_lower, %f, %f, %f\n", c_ans, reward_UE_upper, reward_UE_lower);
        if (c_ans != 0){
            reward_UE = (reward_UE_upper * reward_UE_upper) / (c_ans * reward_UE_lower);
        }else{
            reward_UE = 0;
        }
            

        reward = alpha * reward_BS + (1.0 - alpha) * reward_UE;
        //#ifdef DEBUG
        printf("reward: %f, %f, %f\n", reward_BS, reward_UE, reward);
        //#endif // DEBUG
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
    
                    if (old_bs != NULL){
                        (*old_bs).remove_inside_UE(ue);
                    }    
                    
                    #ifdef DEBUG
                    here = clock();
                    printf("!HetNet_toc_Sim execute_sim_darwinian711, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    printf("BS id: %d", (*old_bs).id);
                    #endif // DEBUG

                    vector<UE *> UE_tmp;
                    if (old_bs != NULL){
                        UE_tmp = (*old_bs).get_connecting_UE_ul();
                    }
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
                        bool conn;
                        if (new_bs != NULL){
                            conn = (*new_bs).set_connecting_UE_ul(ue);
                        }else{
                            conn = false;
                        }                        //#print("connect:"+str(conn))
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

                    if (old_bs != NULL){
                        UE_tmp = (*old_bs).get_connecting_UE_dl();
                    }
                    UE_bool = false;
                    for(auto iter = UE_tmp.begin(); iter != UE_tmp.end(); ++iter){
                        if((*(*iter)).id == (*ue).id){
                            UE_bool = true;
                        }
                    }
                    if (UE_bool){
                        (*old_bs).remove_connecting_UE_dl(ue);
                        bool conn;
                        if (new_bs != NULL){
                            conn = (*new_bs).set_connecting_UE_dl(ue);
                        }else{
                            conn = false;
                        }
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

                    if (new_bs != NULL){
                        (*new_bs).set_inside_UE(ue);
                    }
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



double Simulator::execute_sinrmap(FILE *fp){

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
        printf("!HetNet_toc_Sim execute_sinrmap1, %.2f\n", (double)(here - start)/1000);
        start = here;
        #endif // DEBUG

        time_step = 0;
        time_slot = 0;
        double reward;
        double reward_BS, reward_UE;
        UE * ue_tmp = UE_list[0];
        BS *old_bs;
        BS *new_bs;
        Link *link_tmp;
        
        int direction = 0; //0:UL, 1:DL
        int direction_list[8] = {0, 0, 0, 0, 0, 0, 0, 0};
        //int direction_list[8] = {1, 1, 1, 1, 1, 1, 1, 1};
        //int direction_list[8] = {0, 0, 0, 0, 1, 1, 1, 1};
        //int direction_list[8] = {1, 1, 1, 1, 0, 0, 0, 0};

        //int direction_list[8] = {1, 0, 0, 0, 0, 0, 0, 0};
        //int direction_list[8] = {1, 1, 1, 0, 0, 0, 0, 0};
        //int direction_list[8] = {1, 1, 1, 1, 1, 0, 0, 0};
        //int direction_list[8] = {1, 1, 1, 1, 1, 1, 1, 0};

        for(int k=0;k<256;k++){ //k<8
            int y;
            int c=0;
            int x = k;
            while(x>=1){
                y = x % 2;
                #ifdef DEBUG
                printf("y, c: %d, %d\n",y, c);
                #endif // DEBUG
                direction_list[7-c] = y;
                x = x / 2;
                c = c+1;
            }
            printf("direction_list: %d: %d, %d, %d, %d, %d, %d, %d, %d\n", k, direction_list[0], direction_list[1], direction_list[2], direction_list[3], direction_list[4], direction_list[5], direction_list[6], direction_list[7]);

            for (int i=3900; i<4800; i=i+10){
                for (int j=-41200; j<-40300; j=j+10){
//            for (int i=4000; i<4700; i=i+10){
//                for (int j=-41100; j<-40400; j=j+10){
//            for (int i=4000; i<4700; i=i+1){
//                for (int j=-41100; j<-40400; j=j+1){
                    for (BS * bs: BS_list){
                        #ifdef DEBUG
                        printf("direction:%d, %d\n", (*bs).id, direction_list[(*bs).id]);
                        #endif // DEBUG
                        (*bs).set_state(direction_list[(*bs).id]);
                    }
                    (*ue_tmp).set_xposition(i);
                    (*ue_tmp).set_yposition(j);
                
                    old_bs = (*ue_tmp).get_inside_BS();
                    new_bs = (*ue_tmp).find_BS(old_bs);               
                
                    (*ue_tmp).set_inside_BS(new_bs);
                
                    int j_env = 0;
                    if ((*old_bs).id != (*new_bs).id){
                        #ifdef DEBUG
                        printf("!HetNet_toc_Sim execute_sinrmap2\n");
                        //printf("old_bs.id, new_bs.id: %d, %d\n", (*old_bs).id, (*new_bs).id);
                        #endif // DEBUG
                    
//                        for (Link *j : Link_list){
//                            if ((*j).get_bs() == old_bs){
//                                (*Link_list[j_env]).change_bs(new_bs);
//                            }
//                            j_env = j_env + 1;
//                        }
                    }
                    (*ue_tmp).gen_link(new_bs ,ue_tmp, (*new_bs).get_state());

                    for (UE *uex: UE_list){
                        if ((*uex).id != 0){
                            (*uex).gen_link((*uex).get_inside_BS() ,uex, (*(*uex).get_inside_BS()).get_state());
                            #ifdef DEBUG
                            printf("uexid, BS, state: %d, %d, %d\n", (*uex).id, (*(*uex).get_inside_BS()).id, (*(*uex).get_inside_BS()).get_state() );
                            #endif // DEBUG
                        }
                    }
                
                    capacity_calculation2();

                    #ifdef DEBUG
                    here = clock();
                    printf("!HetNet_toc_Sim execute_sim_darwinian2, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    #endif // DEBUG
                    link_tmp = Link_list[0];
                    #ifdef DEBUG
                    printf("new_bs, i, j, sinr: %d, %d, %d, %f\n",(*new_bs).id, i, j, (*link_tmp).get_sinr());
                    #endif // DEBUG
                    fprintf(fp, "%f ", (*link_tmp).get_sinr());

                    Link_list.clear();
            
                }
            }
            fprintf(fp, "\n");
        
        }


                
    }

double Simulator::execute_sim_get_UE_throughput(vector<double> &position_list, FILE *fi){

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

        NN = 2;

        int time_slot;
        double reward;
        double reward_BS, reward_UE;
        Darwinian_deme cDeme(NN);
        vector<DEME> deme_list;
        
        printf("self.time_step: %d\n", time_step);
        
        
        #ifdef DEBUG
        printf("ul_dl_rate_vector:");
        for (int i=0; i<64; i++){
            printf("%f ", ul_dl_rate_vector[i]);        
        }
        printf("\n");
        #endif

        for (BS *bs : BS_list){
            //float ul_rate_tmp = (*bs).get_ul_rate_inside_UE();
            //float dl_rate_tmp = 1.0 - ul_rate_tmp;
            float ul_tmp = (*bs).get_ul_inside_UE();
            float dl_tmp = (*bs).get_dl_inside_UE();
            #ifdef DEBUG
            printf("ul_rate, dl_rate: %f, %f\n", ul_rate_tmp, dl_rate_tmp);
            #endif
            ul_dl_rate_vector.erase(ul_dl_rate_vector.begin());
            ul_dl_rate_vector.erase(ul_dl_rate_vector.begin());
            //ul_dl_rate_vector.push_back(ul_rate_tmp);
            //ul_dl_rate_vector.push_back(dl_rate_tmp);
            ul_dl_rate_vector.push_back(ul_tmp);
            ul_dl_rate_vector.push_back(dl_tmp);
        }

        printf("flagistrue:%d\n", ul_dl_rate_vector.size());
        for (int i=ul_dl_rate_vector.size()-16; i<ul_dl_rate_vector.size()-1; i++){
            fprintf(fi, "%f ", ul_dl_rate_vector[i]);
        }
        fprintf(fi, "%f\n", ul_dl_rate_vector[ul_dl_rate_vector.size()-1]);

        //#move xy
        //#print("len UE_list:"+str(len(self.UE_list)))
        move_file(position_list);  //#stop move
        for (UE *ue : UE_list){
            (*ue).renew_time_stamp();
        }

        #ifdef DEBUG
        //here = clock();
        //printf("!HetNet_toc_Sim execute_sim_darwinian7, %.2f\n", (double)(here - start)/1000);
        printf("!HetNet_toc_Sim execute_sim_darwinian7\n");
        //start = here;
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
                //here = clock();
                //printf("!HetNet_toc_Sim execute_sim_darwinian71, %.2f\n", (double)(here - start)/1000);
                printf("!HetNet_toc_Sim execute_sim_darwinian71\n");
                //start = here;
                #endif // DEBUG
                
                if (old_bs != new_bs){
                    (*ue).set_connecting_BS(new_bs);
                    (*ue).set_inside_BS(new_bs);

                    #ifdef DEBUG
                    //here = clock();
                    //printf("!HetNet_toc_Sim execute_sim_darwinian710, %.2f\n", (double)(here - start)/1000);
                    printf("!HetNet_toc_Sim execute_sim_darwinian710\n");
                    //start = here;
                    //printf("BS id: %d", (*old_bs).id);
                    #endif // DEBUG
    
                    if (old_bs != NULL){
                        (*old_bs).remove_inside_UE(ue);
                    }
                    
                    #ifdef DEBUG
                    //here = clock();
                    //printf("!HetNet_toc_Sim execute_sim_darwinian711, %.2f\n", (double)(here - start)/1000);
                    printf("!HetNet_toc_Sim execute_sim_darwinian711\n");
                    //start = here;
                    //printf("BS id: %d", (*old_bs).id);
                    #endif // DEBUG

                    vector<UE *> UE_tmp;
                    if (old_bs != NULL){
                        UE_tmp = (*old_bs).get_connecting_UE_ul();
                    }
                    #ifdef DEBUG
                    //here = clock();
                    //printf("!HetNet_toc_Sim execute_sim_darwinian712, %.2f\n", (double)(here - start)/1000);
                    printf("!HetNet_toc_Sim execute_sim_darwinian712\n");
                    //start = here;
                    #endif // DEBUG
                    bool UE_bool = false;
                    for(auto iter = UE_tmp.begin(); iter != UE_tmp.end(); ++iter){
                        #ifdef DEBUG
                        //here = clock();
                        //printf("!HetNet_toc_Sim execute_sim_darwinian713, %.2f\n", (double)(here - start)/1000);
                        printf("!HetNet_toc_Sim execute_sim_darwinian713\n");
                        //start = here;
                        #endif // DEBUG
                        if((*(*iter)).id == (*ue).id){
                            UE_bool = true;
                        }
                    }
                    

                    #ifdef DEBUG
                    //here = clock();
                    //printf("!HetNet_toc_Sim execute_sim_darwinian72, %.2f\n", (double)(here - start)/1000);
                    printf("!HetNet_toc_Sim execute_sim_darwinian72\n");
                    //start = here;
                    #endif // DEBUG

                    if (UE_bool){
                        (*old_bs).remove_connecting_UE_ul(ue);
                        bool conn;
                        if (new_bs != NULL){
                            conn = (*new_bs).set_connecting_UE_ul(ue);
                        }else{
                            conn = false;
                        }
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
                    //here = clock();
                    //printf("!HetNet_toc_Sim execute_sim_darwinian73, %.2f\n", (double)(here - start)/1000);
                    printf("!HetNet_toc_Sim execute_sim_darwinian73\n");
                    //start = here;
                    #endif // DEBUG

                    if (old_bs != NULL){
                        UE_tmp = (*old_bs).get_connecting_UE_dl();
                    }
                    UE_bool = false;
                    for(auto iter = UE_tmp.begin(); iter != UE_tmp.end(); ++iter){
                        if((*(*iter)).id == (*ue).id){
                            UE_bool = true;
                        }
                    }
                    if (UE_bool){
                        (*old_bs).remove_connecting_UE_dl(ue);
                        bool conn;
                        if (new_bs != NULL){
                            conn = (*new_bs).set_connecting_UE_dl(ue);
                        }else{
                            conn = false;
                        }
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
                    //here = clock();
                    //printf("!HetNet_toc_Sim execute_sim_darwinian74, %.2f\n", (double)(here - start)/1000);
                    printf("!HetNet_toc_Sim execute_sim_darwinian74\n");
                    //start = here;
                    #endif // DEBUG

                    if (new_bs != NULL){
                        (*new_bs).set_inside_UE(ue);
                    }
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
        //here = clock();
        //printf("!HetNet_toc_Sim execute_sim_darwinian8, %.2f\n", (double)(here - start)/1000);
        printf("!HetNet_toc_Sim execute_sim_darwinian8\n");
        //start = here;
        //printf("UE_list: %d\n", UE_list.size());
        #endif // DEBUG
        
        //# gen new data
        for (UE *ue : UE_list){    
            #ifdef DEBUG
            //here = clock();
            //printf("!HetNet_toc_Sim execute_sim_darwinian81, %.2f\n", (double)(here - start)/1000);
            printf("!HetNet_toc_Sim execute_sim_darwinian81\n");
            //start = here;
            #endif // DEBUG
            (*ue).gen_random_data_ue(time_step / 10);  //#gen random data
            #ifdef DEBUG
            //here = clock();
            //printf("!HetNet_toc_Sim execute_sim_darwinian82, %.2f\n", (double)(here - start)/1000);
            printf("!HetNet_toc_Sim execute_sim_darwinian82\n");
            //start = here;
            //printf("(*ue).data_list.size():%d\n", (*ue).data_list.size());
            #endif // DEBUG
        }
        
        #ifdef DEBUG
        //here = clock();
        //printf("!HetNet_toc_Sim execute_sim_darwinian9, %.2f\n", (double)(here - start)/1000);
        printf("!HetNet_toc_Sim execute_sim_darwinian9\n");
        //start = here;
        #endif // DEBUG

        //#set connecting_UE     
        set_send_recieve();
        
        #ifdef DEBUG
        //here = clock();
        //printf("!HetNet_toc_Sim execute_sim_darwinian10, %.2f\n", (double)(here - start)/1000);
        printf("!HetNet_toc_Sim execute_sim_darwinian10\n");
        //start = here;
        #endif // DEBUG

        for (BS *bs : BS_list){
            //#print("connecting_UE:"+str(len(i.get_connecting_UE_ul()))+", "+str(len(i.get_connecting_UE_dl()))+", "+str(i.get_name()))
            (*bs).set_c_connecting_UE();
        }

                
    }


double Simulator::execute_sim_supervised_evaluation(vector<double> &position_list, vector<vector<double>> &foward_list, vector<vector<vector<double>>> & sinr_map_all, FILE *fi, vector<FILE *>fo_list, int file_num_tmp, vector<float> &wr, vector<float> &wroutput_vector, int ps_id_x){

        //#BS
        //#action,
        //#send
        //#recieve,
        //#move
        //#setting,
        //#observation, reward

////////////////

        NN = file_num_tmp;
        ps_id = ps_id_x;
	
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
            printf("UE ID: %d\n",ue->id);
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


////////////////
        
        file_num = file_num_tmp;

        #ifdef DEBUG
        clock_t start, here;
        start = clock();
        #endif // DEBUG



        #ifdef DEBUG
        here = clock();
        printf("!HetNet_toc_Sim execute_sim_darwinian1, %.2f\n", (double)(here - start)/1000);
        start = here;
        #endif // DEBUG


        time_step = 0;
        time_slot = 0;
        double reward;
        double reward_BS, reward_UE;
        Darwinian_deme cDeme(NN);
        vector<DEME> deme_list;

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


        #ifdef DEBUG
        printf("ul_dl_rate_vector:");
        for (int i=0; i++; i<64){
            printf("%f ", ul_dl_rate_vector[i]);        
        }
        printf("\n");
        #endif

        for (BS *bs : BS_list){
            //float ul_rate_tmp = (*bs).get_ul_rate_inside_UE();
            //float dl_rate_tmp = 1.0 - ul_rate_tmp;
            float ul_tmp = (*bs).get_ul_inside_UE();
            float dl_tmp = (*bs).get_dl_inside_UE();
            #ifdef DEBUG
            printf("ul_rate, dl_rate: %f, %f\n", ul_rate_tmp, dl_rate_tmp);
            #endif
            ul_dl_rate_vector.erase(ul_dl_rate_vector.begin());
            ul_dl_rate_vector.erase(ul_dl_rate_vector.begin());
            //ul_dl_rate_vector.push_back(ul_rate_tmp);
            //ul_dl_rate_vector.push_back(dl_rate_tmp);
            ul_dl_rate_vector.push_back(ul_tmp);
            ul_dl_rate_vector.push_back(dl_tmp);
        }
        

        //#ifdef DEBUG
        //printf("ul_dl_rate_vector:");
        //for (int i=0; i++; i<64){
        //    printf("%f ", ul_dl_rate_vector[i]);        
        //}
        //printf("\n");
        //#endif

        //cDeme.evolution_initialization(time_step);
        //cDeme.evolution_gen_environment(time_step);
        //deme_list = cDeme.evolution_gen_update(time_step);

        //for (int i=0; i<NN; i++){
        //    for (int j=0; j<N; j++){
        //        printf("foward_list1: %d, %f\n", j, foward_list[i][j]);
        //    }
        //}


        printf("foward_list.size():%d\n", foward_list.size());

        deme_list = cDeme.evolution_gen_update_supervised(time_step, foward_list);      

////////////////////////////////
///exit(0);

        vector<float> w(NN); //NN=1
        float v[N]; //N=16
        float original_reward;
        pair<double, double> ans;        
        printf("NN:%d\n", NN);
        for (int n=0; n< NN; n++){
        //for o_env, output in enumerate(deme_list):
            //printf("output:"+str(output))

            for (UE *ue : UE_list){
                #ifdef DEBUG
                //here = clock();
                //printf("!!HetNet_toc_Sim execute_sim_darwinian30, %.2f\n", (double)(here - start)/1000);
                printf("!!HetNet_toc_Sim execute_sim_darwinian30\n");
                //start = here;
                printf("(*ue).data_list.size():%d\n", (*ue).data_list.size());
                printf("(*ue).data_list_copy.size():%d\n", (*ue).data_list_copy.size());
                printf("(*ue).id:%d\n", (*ue).id);
                #endif // DEBUG
                (*ue).cp_data_list();
            }
            

            #ifdef DEBUG
            here = clock();
            printf("!!HetNet_toc_Sim execute_sim_darwinian31, %.2f\n", (double)(here - start)/1000);
            start = here;
            #endif // DEBUG

            //printf("output_vector:");
            for (int i=0; i<N; i++){
                #ifdef DEBUG
                printf("!!HetNet_toc_Sim execute_sim_darwinian310\n");
                printf("deme_list[0].output[n][i]: %f, %d, %d\n", deme_list[0].output[n][i], n, i);
                #endif // DEBUG
                output_vector[i] = deme_list[0].output[n][i];
                //printf("%f ", output_vector[i]);
                
                wroutput_vector.push_back(output_vector[i]);
            }
            //printf("\n");

	printf("output_vector_%d: ", n);
        for (int j=0; j<output_vector.size()/10; j++){
          double decimal = 0;
          double base = 1;
          for (int k=0; k<10; k++){
            //printf("%d, %d, %f, %f\n", j, k, decimal, best_output[j*10+k]);
            if (output_vector[j*10+k]>0){
                decimal = decimal + base;
            }
            base = base * 2;
          }
          printf("%d ", int(decimal));
        }
        printf("\n");//print_output
	
            #ifdef DEBUG
            printf("!!HetNet_toc_Sim execute_sim_darwinian311\n");
            #endif // DEBUG

            for (BS *bs : BS_list){
                (*bs).sim_set_config_supervised_learning(output_vector);
            }                    

            #ifdef DEBUG
            printf("!!HetNet_toc_Sim execute_sim_darwinian312\n");
            #endif // DEBUG


//exit(0);            
            //#send_recieve
            for (int j=0; j< 10; j++){
                time_slot = j % 10;
                
                for (BS *bs : BS_list){
                    //#print("output2:"+str(output))
                    (*bs).sim_set_state_supervised_learning(time_slot);

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
            
//exit(0);            
                capacity_calculation3(sinr_map_all, 0); 
//exit(0);            

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

//exit(0);            
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
//exit(0);            
            #ifdef DEBUG
            here = clock();
            printf("!!HetNet_toc_Sim execute_sim_darwinian32, %.2f\n", (double)(here - start)/1000);
            start = here;
            #endif // DEBUG

            reward_BS = 0;
            for (BS *bs: BS_list){
                ans = (*bs).get_bs_sentdata_total();
                #ifdef DEBUG
                printf("ans.first: %f", ans.first);
                printf("ans.second: %f", ans.second);
                #endif // DEBUG
                reward_BS = reward_BS + ans.first;
                reward_BS = reward_BS + ans.second;
            }
            
            double ans_tmp;
            double c_ans = 0;
            reward_UE = 0;
            double reward_UE_upper = 0;
            double reward_UE_lower = 0;
            for (UE *ue: UE_list){
                if ((*ue).inside_BS != NULL){
                    ans_tmp = (*ue).get_ue_sentdata_total();
                
                    reward_UE_upper = reward_UE_upper + ans_tmp;
                    reward_UE_lower = reward_UE_lower + ans_tmp * ans_tmp;
                    c_ans = c_ans + 1;
                    #ifdef DEBUG
                    printf("ans_tmp: %f", ans_tmp);
                    #endif // DEBUG
                }
            }

            printf("\n!!HetNet_toc_Sim rewardBS, UE_list.size, data_size, %f, %d, %f\n", reward_BS, c_ans, (*UE_list[0]).data_block);
            reward_BS = reward_BS / (c_ans * (*UE_list[0]).data_block * (*UE_list[0]).data_size);

            printf("\n!!HetNet_toc_Sim rewardUE, c_ans, reward_UE_upper, reward_UE_lower, %f, %f, %f\n", c_ans, reward_UE_upper, reward_UE_lower);
            if (c_ans != 0){
                reward_UE = (reward_UE_upper * reward_UE_upper) / (c_ans * reward_UE_lower);
            }else{
                reward_UE = 0;
            }
            
//exit(0);
            reward = alpha * reward_BS + (1.0 - alpha) * reward_UE;
            #ifdef DEBUG
            printf("0reward: %f, %f, %f\n", reward_BS, reward_UE, reward);
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
            
            original_reward = reward;
            w[n] = reward;


        }
        
//exit(0);
        float worst_reward = 100000;
        int worst_reward_i = 0;
        printf("reward--");
        float best_reward = 0;
        int best_reward_i = 0;
        for (int i=0; i<w.size(); i++){
            printf("w0: %f, ", w[i]);
            if (worst_reward > w[i]){
                worst_reward = w[i];
                worst_reward_i = i;
            }
            if (best_reward < w[i]){
                best_reward = w[i];
                best_reward_i = i;
            }
        }
        printf("%d\n", best_reward_i);
        
        for (int i=0; i<w.size(); i++){
            wr.push_back(w[i]);
        }

        int w_r;
        if (w.size() > 1){
            do {
                w_r = rand() % (w.size());
            }while(w_r == worst_reward_i);
        }else{
            w_r = worst_reward_i;
        }
        
        printf("output_vector.learning:");
        vector<float> learning_output_vector(N);
        for (int i=0; i<N; i++){
            learning_output_vector[i] = deme_list[0].output[w_r][i];
            printf("%f ", learning_output_vector[i]);
        }
        printf("\n");

////exit(0);
        #ifdef DEBUG
        here = clock();
        printf("!!HetNet_toc_Sim execute_sim_darwinian4, %.2f\n", (double)(here - start)/1000);
        start = here;
        #endif // DEBUG

        cDeme.return_fitness(w, 0);
            
        vector<float> best_output = cDeme.evolution_gen_calcbestfitness(time_slot);
        //self.sim_darwinian_learning(self.time_slot)############!!!!!!!
        //print("best_output:"+str(self.best_output))


        #ifdef DEBUG
        printf("!!HetNet_toc_Sim execute_sim_darwinian401\n");
        #endif // DEBUG

        deme_list = cDeme.evolution_gen_selection(time_slot);

        #ifdef DEBUG
        printf("!!HetNet_toc_Sim execute_sim_darwinian402\n");
        #endif // DEBUG

        //int indx1 = rand() % 10;
        //int indx2 = rand() % 10;
        //vector<float> output_vector_var1;
        //vector<float> output_vector_var2;
        //for (int i=0; i<10; i++){
        //    output_vector_var1[i] = output_vector[i];
        //    output_vector_var2[i] = output_vector[i];
        //}
        //output_vector_var1[indx1] = output_vector_var1[indx1] * -1.0;
        //output_vector_var2[indx2] = output_vector_var2[indx2] * -1.0;

        //float variant_reward1;
        //float variant_reward2;
//exit(0);//
/*
        for (int n=0; n< 2; n++){
        //for o_env, output in enumerate([deme_list[0], deme_list[1]]):

            printf("output_vector.v:");
            for (int i=0; i<N; i++){
                if (n==0) {
                    output_vector[i] = deme_list[0].v1[i];
                }else{
                    output_vector[i] = deme_list[0].v2[i];                
                }
                printf("%f ", output_vector[i]);
            }
            printf("\n");

            #ifdef DEBUG
            printf("!!HetNet_toc_Sim execute_sim_darwinian403\n");
            printf("output_vector.size(): %d\n", output_vector.size());
            //vector<float>::const_iterator iter = output_vector.begin();
            //cout << *iter << '\n';
            printf("output_vector[0]: %f\n", output_vector[0]);
            #endif // DEBUG
            

            for (BS *bs : BS_list){
                (*bs).sim_set_config_supervised_learning(output_vector);
            }                    

        
            for (UE *ue : UE_list){
                    (*ue).cp_data_list();
            }

         //#send_recieve
            for (int j=0; j<10; j++){
                time_slot = j % 10;
            
                for (BS *bs : BS_list){
                    (*bs).sim_set_state_supervised_learning(time_slot);
                    #ifdef DEBUG
                    here = clock();
                    printf("!!HetNet_toc_Sim execute_sim_darwinian40, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    printf("id state timestep %d, %d, %d\n", (*bs).id, (*bs).get_state(), time_step);
                    #endif // DEBUG
                    //#for i in self.BS_list:
                    //#    i.set_state(self.time_slot)
                }
                
                capacity_calculation3(sinr_map_all);        

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

            reward_BS = 0;
            for (BS *bs: BS_list){
                ans = (*bs).get_bs_sentdata_total();
                #ifdef DEBUG
                printf("ans.first: %f", ans.first);
                printf("ans.second: %f", ans.second);
                #endif // DEBUG
                reward_BS = reward_BS + ans.first;
                reward_BS = reward_BS + ans.second;
            }
            
            double ans_tmp;
            double c_ans = 0;
            reward_UE = 0;
            double reward_UE_upper = 0;
            double reward_UE_lower = 0;
            for (UE *ue: UE_list){
                if ((*ue).inside_BS != NULL){
                    ans_tmp = (*ue).get_ue_sentdata_total();
                
                    reward_UE_upper = reward_UE_upper + ans_tmp;
                    reward_UE_lower = reward_UE_lower + ans_tmp * ans_tmp;
                    c_ans = c_ans + 1;
                    #ifdef DEBUG
                    printf("ans_tmp: %f", ans_tmp);
                    #endif // DEBUG
                }
            }

            printf("\n!!HetNet_toc_Sim rewardBS, UE_list.size, data_size, %f, %d, %f\n", reward_BS, c_ans, (*UE_list[0]).data_block);
            reward_BS = reward_BS / (c_ans * (*UE_list[0]).data_block * (*UE_list[0]).data_size);


            printf("\n!!HetNet_toc_Sim rewardUE, c_ans, reward_UE_upper, reward_UE_lower, %f, %f, %f\n", c_ans, reward_UE_upper, reward_UE_lower);
            if (c_ans != 0){
                reward_UE = (reward_UE_upper * reward_UE_upper) / (c_ans * reward_UE_lower);
            }else{
                reward_UE = 0;
            }
            

            reward = alpha * reward_BS + (1.0 - alpha) * reward_UE;
            //#ifdef DEBUG
            printf("1reward: %f, %f, %f\n", reward_BS, reward_UE, reward);
            //#endif // DEBUG
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
            
            //if (n==1){
            //    variant_reward1 = reward;
            //} else{
            //    variant_reward2 = reward;            
            //}
            w[n] = reward;

        }
        
        #ifdef DEBUG
        here = clock();
        printf("!!HetNet_toc_Sim execute_sim_darwinian5, %.2f\n", (double)(here - start)/1000);
        start = here;
        #endif // DEBUG

        cDeme.return_fitness_mutate(w, 0);


        bool flag = cDeme.evolution_gen_replacemutation(time_slot);
*/        
//exit(0);
        
        //#cDeme.evolution_gen_learnbest(time_slot);
        //#cDeme.evolution_gen_learnworst(time_slot);
        
        //#ifdef DEBUG
        //printf("original_reward: %f\n", original_reward);
        //printf("variant_reward1: %f\n", variant_reward1);
        //printf("variant_reward2: %f\n", variant_reward2);
        //#endif
        
        //vector<float> best_output_vector = output_vector;
        //double best_reward = original_reward;
        //if (variant_reward1 > best_reward){
        //    best_reward = variant_reward1;
        //    best_output_vector = output_vector_var1;
        //}
        //if (variant_reward2 > best_reward){
        //    best_reward = variant_reward2;
        //    best_output_vector = output_vector_var2;
        //}

        ////!!!learning the best!!!
        for (int i=0; i<N; i++){
            learning_output_vector[i] = best_output[i];
        }

        //!!!!!!kokoyo 2
/*        //if (flag == true){ # for concurrent
        printf("flagistrue2:%d\n", ul_dl_rate_vector.size());
        for (int i=0; i<ul_dl_rate_vector.size()-1; i++){
            fprintf(fi, "%f ", ul_dl_rate_vector[i]);
        }
        fprintf(fi, "%f\n", ul_dl_rate_vector[ul_dl_rate_vector.size()-1]);
*/
        //the last vector  for next input #for step by step
        printf("flagistrue2:%d\n", ul_dl_rate_vector.size());
        for (int i=ul_dl_rate_vector.size()-16; i<ul_dl_rate_vector.size()-1; i++){
            fprintf(fi, "%f ", ul_dl_rate_vector[i]);
        }
        fprintf(fi, "%f\n", ul_dl_rate_vector[ul_dl_rate_vector.size()-1]);


/*        //best output for next input
        printf("flagistrue2:%d\n", best_output.size());
        for (int i=0; i<best_output.size()-1; i++){
            fprintf(fi, "%f ", best_output[i]);
        }
        fprintf(fi, "%f\n", best_output[best_output.size()-1]);
*/
        
/*        double r, rv;    
        for (int f=0; f<file_num; f++){
            for (int i=0; i<learning_output_vector.size()-1; i++){
                r = (double)rand()/RAND_MAX;
                rv = 1.0 - (double)rand()/RAND_MAX * 2;
                #ifdef DEBUG
                printf("randomr:%f\n",r);
                #endif // DEBUG
                if (r < (1.0 - m_rate)){
                    fprintf(fo_list[f], "%f ", learning_output_vector[i]);
                }else{
                    fprintf(fo_list[f], "%f ",  rv);                
                }
            }
            r = (double)rand()/RAND_MAX;
            rv = 1.0 - (double)rand()/RAND_MAX * 2;
            if (r < (1.0 - m_rate)){
                fprintf(fo_list[f], "%f\n", learning_output_vector[learning_output_vector.size()-1]);
            }else{
                fprintf(fo_list[f], "%f\n",  rv);
            }
        }
*/
        double lim = 1.0;//0.5; //1.0
        double r, rv;    
        for (int f=0; f<file_num; f++){
            r = (double)rand()/RAND_MAX;
            if (r < (1.0 - m_rate)){
                for (int i=0; i<learning_output_vector.size()-1; i++){
                    #ifdef DEBUG
                    printf("randomr:%f\n",r);
                    #endif // DEBUG
                    fprintf(fo_list[f], "%f ", learning_output_vector[i]);
                }
                fprintf(fo_list[f], "%f\n", learning_output_vector[learning_output_vector.size()-1]);
            } else {
                for (int i=0; i<learning_output_vector.size()-1; i++){
                    rv = 1.0 - (double)rand()/RAND_MAX * lim * 2;
                    #ifdef DEBUG
                    printf("randomr:%f\n",r);
                    #endif // DEBUG
                    fprintf(fo_list[f], "%f ",  rv);      
                }          
                rv = 1.0 - (double)rand()/RAND_MAX * lim * 2;
                fprintf(fo_list[f], "%f\n", rv);                       
            }
        }


        //}
        printf("best_output:");
        for (int j=0; j<best_output.size()/10; j++){
          double decimal = 0;
          double base = 1;
          for (int k=0; k<10; k++){
            //printf("%d, %d, %f, %f\n", j, k, decimal, best_output[j*10+k]);
            if (best_output[j*10+k]>0){
                decimal = decimal + base;
            }
            base = base * 2;
          }
          printf("%d ", int(decimal));
        }
        printf("\n");

        for (BS *bs : BS_list){
            //(*bs).sim_set_config_supervised_learning(output_vector);
            (*bs).sim_set_config_supervised_learning(best_output);
        }                    
        

        for (int j=0; j< 10; j++){
            time_slot = time_step % 10;

            #ifdef DEBUG
            printf("BS_list, %d\n", BS_list.size());
            #endif // DEBUG

            for (BS *bs : BS_list){
                (*bs).sim_set_state_supervised_learning(time_slot);
                #ifdef DEBUG
                here = clock();
                printf("!!HetNet_toc_Sim execute_sim_darwinian61, %.2f\n", (double)(here - start)/1000);
                start = here;
                printf("id state timestep %d, %d, %d\n", (*bs).id, (*bs).get_state(), time_step);
                #endif // DEBUG
            }                    

            #ifdef DEBUG
            printf("!!HetNet_toc_Sim execute_sim_darwinian6111");
            #endif // DEBUG


            capacity_calculation3(sinr_map_all, 1);        

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


//
        for (UE *ue : UE_list){
            (*ue).clear_links_ul();
            (*ue).clear_links_dl();
        }
        
        #ifdef DEBUG
        here = clock();
        printf("!!HetNet_toc_Sim execute_sim_darwinian6, %.2f\n", (double)(here - start)/1000);
        start = here;
        #endif // DEBUG

        #ifdef DEBUG
        printf("BS_list.size(): %d\n", BS_list.size());
        #endif // DEBUG


        int inside_UE_num;
        printf("ans.binsideu: ");
        for (BS *bs: BS_list){
            inside_UE_num = (*bs).get_inside_UE_num();
            //#ifdef DEBUG
            printf("%i ", inside_UE_num);
        }
        printf("\n");

        reward_BS = 0;
        printf("ans.bs ");
        for (BS *bs: BS_list){
            ans = (*bs).get_bs_sentdata_total();
            //#ifdef DEBUG
            printf("%f %f ", ans.first, ans.second);
            //#endif // DEBUG
            reward_BS = reward_BS + ans.first;
            reward_BS = reward_BS + ans.second;
        }
        printf("\n");
            
        double ans_tmp;
        double c_ans = 0;
        reward_UE = 0;
        double reward_UE_upper = 0;
        double reward_UE_lower = 0;
        printf("ans.ue ");
        for (UE *ue: UE_list){
            if ((*ue).inside_BS != NULL){
                ans_tmp = (*ue).get_ue_sentdata_total();
                
                reward_UE_upper = reward_UE_upper + ans_tmp;
                reward_UE_lower = reward_UE_lower + ans_tmp * ans_tmp;
                c_ans = c_ans + 1;
                //#ifdef DEBUG
                printf("%f ", ans_tmp);
                //#endif // DEBUG
            }
        }
        printf("\n");

        printf("\n!!HetNet_toc_Sim rewardBS, UE_list.size, data_size, %f, %d, %f\n", reward_BS, c_ans, (*UE_list[0]).data_block);
        reward_BS = reward_BS / (c_ans * (*UE_list[0]).data_block * (*UE_list[0]).data_size);

        printf("\n!!HetNet_toc_Sim rewardUE, c_ans, reward_UE_upper, reward_UE_lower, %f, %f, %f\n", c_ans, reward_UE_upper, reward_UE_lower);
        if (c_ans != 0){
            reward_UE = (reward_UE_upper * reward_UE_upper) / (c_ans * reward_UE_lower);
        }else{
            reward_UE = 0;
        }
            

        reward = alpha * reward_BS + (1.0 - alpha) * reward_UE;
        //#ifdef DEBUG
        printf("reward: %f, %f, %f\n", reward_BS, reward_UE, reward);
        //#endif // DEBUG
        //print("finalreward:\t"+str(reward)+", "+str(self.best_output))

        #ifdef DEBUG
        printf("!!HetNet_toc_Sim execute_sim_darwinian61112\n");
        #endif // DEBUG


        for (UE *ue : UE_list){
            ue->data_list.clear();
        }
//exit(0);
////////////////////////////////
        
        //#move xy
        //#print("len UE_list:"+str(len(self.UE_list)))
        move_file(position_list);  //#stop move
//exit(0);
        #ifdef DEBUG
        printf("!!HetNet_toc_Sim execute_sim_darwinian61113\n");
        #endif // DEBUG
        for (UE *ue : UE_list){
            (*ue).renew_time_stamp();
        }
        #ifdef DEBUG
        printf("!!HetNet_toc_Sim execute_sim_darwinian61114\n");
        #endif // DEBUG

        #ifdef DEBUG
        here = clock();
        printf("!HetNet_toc_Sim execute_sim_darwinian7, %.2f\n", (double)(here - start)/1000);
        start = here;
        #endif // DEBUG


        //#move change bs
        if (true){

            BS *old_bs;
            BS *new_bs;

            #ifdef DEBUG
            printf("!HetNet_toc_Sim execute_sim_darwinian71-, %d\n", UE_list.size());
            #endif // DEBUG
            
            for (UE *ue : UE_list){
                #ifdef DEBUG
                printf("!HetNet_toc_Sim execute_sim_darwinian71-1, %d\n", ue->id);
                #endif // DEBUG
                old_bs = (*ue).get_inside_BS();
                #ifdef DEBUG
                printf("!HetNet_toc_Sim execute_sim_darwinian71-2, %d\n", old_bs->id);
                #endif // DEBUG
                new_bs = (*ue).find_BS(old_bs);
                #ifdef DEBUG
                printf("!HetNet_toc_Sim execute_sim_darwinian71-3, %d\n", new_bs->id);
                #endif // DEBUG
                //#print("new_BS:"+str(new_bs.get_name())+", "+str(i.get_name())+", "+str(self.time_step))

                #ifdef DEBUG
                here = clock();
                printf("!HetNet_toc_Sim execute_sim_darwinian71, %.2f\n", (double)(here - start)/1000);
                start = here;
                #endif // DEBUG
                
//exit(0);
                if (old_bs != new_bs){
                    (*ue).set_connecting_BS(new_bs);
//exit(0);
                    (*ue).set_inside_BS(new_bs);

                    #ifdef DEBUG
                    here = clock();
                    printf("!HetNet_toc_Sim execute_sim_darwinian710, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    printf("BS id: %d", (*old_bs).id);
                    #endif // DEBUG
//exit(0);
                    if (old_bs != NULL){
                        (*old_bs).remove_inside_UE(ue);
                    }
//exit(0);
                    #ifdef DEBUG
                    here = clock();
                    printf("!HetNet_toc_Sim execute_sim_darwinian711, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    printf("BS id: %d", (*old_bs).id);
                    #endif // DEBUG

                    vector<UE *> UE_tmp;
                    if (old_bs != NULL){
                        UE_tmp = (*old_bs).get_connecting_UE_ul();
                    }
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
                    
//exit(0);

                    #ifdef DEBUG
                    here = clock();
                    printf("!HetNet_toc_Sim execute_sim_darwinian72, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    #endif // DEBUG

                    if (UE_bool){
                        (*old_bs).remove_connecting_UE_ul(ue);
                        bool conn;
                        if (new_bs != NULL){
                            conn = (*new_bs).set_connecting_UE_ul(ue);
                        }else{
                            conn = false;
                        }                        //#print("connect:"+str(conn))
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
                    
//exit(0);
                    #ifdef DEBUG
                    here = clock();
                    printf("!HetNet_toc_Sim execute_sim_darwinian73, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    #endif // DEBUG

                    if (old_bs != NULL){
                        UE_tmp = (*old_bs).get_connecting_UE_dl();
                    }
                    UE_bool = false;
                    for(auto iter = UE_tmp.begin(); iter != UE_tmp.end(); ++iter){
                        if((*(*iter)).id == (*ue).id){
                            UE_bool = true;
                        }
                    }
                    if (UE_bool){
                        (*old_bs).remove_connecting_UE_dl(ue);
                        bool conn;
                        if (new_bs != NULL){
                            conn = (*new_bs).set_connecting_UE_dl(ue);
                        }else{
                            conn = false;
                        }                        //#print("connect:"+str(conn))
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

                    if (new_bs != NULL){
                        (*new_bs).set_inside_UE(ue);
                    }
                    //#print("lendatalist:")
                    int env_t = 0;
                    for (Data * data : (*ue).data_list){
                    //for env_t, (tbs, _, _, _, _, _) in enumerate(i.data_list):
                        if (data->bs == old_bs){
                            (*ue).data_list[env_t]->bs = new_bs;
                        }
                        env_t = env_t + 1;
                    }
                    #ifdef DEBUG
                    here = clock();
                    printf("!HetNet_toc_Sim execute_sim_darwinian75, %.2f\n", (double)(here - start)/1000);
                    start = here;
                    #endif // DEBUG
                }
                                            
            }

        }
        return(reward);
        
             
    }


double Simulator::execute_sim_dqn_evaluation(vector<double> &position_list, vector<vector<double>> &foward_list, vector<vector<vector<double>>> & sinr_map_all, FILE *fi, FILE *fr, FILE *fro, vector<FILE *>fo_list, int file_num_tmp, int ps_id_x){

    double reward;
    vector<float> wr(NN);
    vector<float> wroutput_vector(N*NN);
    reward = execute_sim_supervised_evaluation(position_list, foward_list, sinr_map_all, fi, fo_list, file_num_tmp, wr, wroutput_vector, ps_id_x);
    
    fprintf(fr, "%f", reward);                       

    for (int i=0; i<wr.size(); i++){
        fprintf(fr, " %f", wr[i]);    
    }                   
    fprintf(fr, "\n");
    
    for (int i=0; i<wroutput_vector.size(); i++){
        fprintf(fro, "%f ", wroutput_vector[i]);
    }
    fprintf(fro, "\n");


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
            if ((*i).inside_BS != NULL){
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
        }
        for (UE *i : UE_list){
            if ((*i).inside_BS != NULL){
                data_list = (*i).get_data_list();
                //##print(str(i.get_name())+", "+str(len(data_list)))
                for (Data *d : data_list){
                    //printf("ue.get_inside_BS, data_list.size(): %d, %d\n", (*d->bs).id, data_list.size());
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
}

void Simulator::add_link(Link *x){
        Link_list.push_back(x);
        //#print("add_link:"+str(x.get_s().get_name())+", "+str(x.get_d().get_name()))
}


void Simulator::move_file(vector<double> &position_list){
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
