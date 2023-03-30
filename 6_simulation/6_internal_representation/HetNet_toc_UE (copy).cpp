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

    
UE::UE(Simulator *sim_x, string UEtype_x, int id_x, int cell_color_x, double x_pos, double y_pos, double z_pos, BS *bs_x){
    
        sim = sim_x;
        
        x_position = x_pos;
        y_position = y_pos;
        z_position = z_pos;
        
        UEtype = UEtype_x.c_str();
        
        id = id_x;
        cell_color = cell_color_x;
        bs = bs_x;
        
        antenna_gain = 0; //#dBi
        noise_figure = 9; //#dB
        power_class = 23; //#db (200 mW) (/2 = 23-3dB)
        power_control_MBS_UE = -82; //#dBm
        power_control_SBS_UE = -76; //#dBm
        power_control_alpha = 0.8;        
    
        set_inside_BS(bs);
        (*bs).set_inside_UE(this);

    
    }


string UE::get_name(void){
        string name;        
        name = UEtype + to_string(id);
        return name;
}

tuple<double, double, double> UE::get_xyz(void){
        return make_tuple(x_position, y_position, z_position);
    }


double UE::get_TX_power(void){

        double M = 100;
        double tmp_power, power;
        
        if ((*bs).get_type() ==  "MBS"){
            tmp_power = 10 * log10(M) + power_control_MBS_UE + power_control_alpha * (*sim).path_loss(bs, this, 0);
            //#print("M:"+str(10 * math.log10(M))+"control_MBS_UE:"+str(self.power_control_MBS_UE)+"path_loss*alpha:"+str(self.power_control_alpha * self.sim.path_loss(self, bs)))
        }else{
            tmp_power = 10 * log10(M) + power_control_SBS_UE + power_control_alpha * (*sim).path_loss(bs, this, 0);
            //#print("M:"+str(10 * math.log10(M))+"control_SBS_UE:"+str(self.power_control_SBS_UE)+"path_loss*alpha:"+str(self.power_control_alpha * self.sim.path_loss(self, bs)))
        }
        
        power = min(power_class, tmp_power);    
    }
    
double UE::get_antenna_gain(void){
        return antenna_gain;
    }

double UE::get_noise_figure(void){
        return noise_figure;
    }

double UE::append_interf_dl(double interf){
        interf_dl.push_back(interf);
    }
    
double UE::cp_data_list(void){
        data_list_copy.reserve(data_list.size());
        for (std::size_t i = 0; i != data_list.size(); ++i) {
            data_list_copy.push_back(new Data(*data_list[i]));
        }
        #ifdef DEBUG
        cout << "!HetNet_toc_UE cp_data_list\n";
        printf("data_list.size(): %d\n", data_list.size());
        printf("data_list_copy.size(): %d\n", data_list_copy.size());
        #endif // DEBUG
        
    }

Link *UE::find_link(BS *lbs, UE *lue, int direction){
        //#print("find_list:"+str(self.Link_list))
        #ifdef DEBUG
        cout << "!HetNet_toc_UE find_link\n";
        printf("Link_list.size(): %d\n", (*sim).Link_list.size());
        printf("prop: %d, %d, %d\n", lbs->id, lue->id, direction);
        #endif // DEBUG
        for (Link *i : (*sim).Link_list){
           #ifdef DEBUG
           //printf("prop in Link_list: %d, %d, %d\n", (*i).get_bs()->id, (*i).get_ue()->id, (*i).get_direction());
           #endif // DEBUG
           if (((*i).get_bs()->id == lbs->id) && ((*i).get_ue()->id == lue->id) && ((*i).get_direction() == direction)){
               #ifdef DEBUG
               cout << "!HetNet_toc_UE find_link2\n";
               #endif // DEBUG
               return(i);
           }
        }
        #ifdef DEBUG
        cout << "!HetNet_toc_UE find_link3\n";
        #endif // DEBUG
        return(NULL);
        
}

void UE::append_sentdata(Data *d, double capacity, int direction){
  
        #ifdef DEBUG
        cout << "!HetNet_toc_UE append_sentdata\n";
        printf("capacity: %e, direction: %d\n", capacity, direction);
        #endif // DEBUG

        if (direction == 0){
            (*d->bs).sentdata_ul_list.push_back(capacity);
            #ifdef DEBUG
            cout << "!HetNet_toc_UE append_sentdata1\n";
            //for (int i=0; i<(*d->bs).sentdata_ul_list.size(); i++){
            //    printf("sentdata_ul_list: %e\n", (*d->bs).sentdata_ul_list[i]);
            //}
            #endif // DEBUG
        }else{
            (*d->bs).sentdata_dl_list.push_back(capacity);
            #ifdef DEBUG
            cout << "!HetNet_toc_UE append_sentdata2\n";
            //for (int i=0; i<(*d->bs).sentdata_dl_list.size(); i++){
            //    printf("sentdata_dl_list: %e\n", (*d->bs).sentdata_dl_list[i]);
            //}
            #endif // DEBUG
        }
}


void UE::calc_UE_throughput(Data *d, int direction){

        double throughput;
        
        #ifdef DEBUG
        cout << "!HetNet_toc_UE calc_UE_throughput\n";
        #endif // DEBUG
        
        throughput = (d->original_data_size * 1.0) / ((d->time_stamp+1) * 0.01);  //#0.01 #s = 10ms
        
        #ifdef DEBUG
        printf("data_size, time_stamp, id, throughput:%f, %d, %d, %f\n",d->original_data_size, d->time_stamp+1, d->id, throughput);
        #endif // DEBUG

        if (direction == 0){
            (*sim).throughput_ul_list.push_back(throughput);
            throughput_ul_list.push_back(throughput); // choose one!!!
            (*d->bs).throughput_ul_list.push_back(throughput);
            if ((*d->bs).get_type() == "MBS"){
                (*sim).throughput_ul_mbs_list.push_back(throughput);
                throughput_ul_mbs_list.push_back(throughput);
            }else{
                (*sim).throughput_ul_sbs_list.push_back(throughput);
                throughput_ul_sbs_list.push_back(throughput);
            }
        }else{
            (*sim).throughput_dl_list.push_back(throughput);
            throughput_dl_list.push_back(throughput);
            (*d->bs).throughput_dl_list.push_back(throughput);
            if ((*d->bs).get_type() == "MBS"){
                (*sim).throughput_dl_mbs_list.push_back(throughput);
                throughput_dl_mbs_list.push_back(throughput);
            }else{
                (*sim).throughput_dl_sbs_list.push_back(throughput);
                throughput_dl_sbs_list.push_back(throughput);
            }
        }

            
        //#print("throughput_ul:"+str(self.throughput_ul_list))
        //#print("throughput_dl:"+str(self.throughput_dl_list))
        
}

void UE::removeData(vector<Data *> & d, Data * d_x) {
    for(auto iter = d.begin(); iter != d.end(); ++iter){
        if((*(*iter)).id == (*d_x).id){
            iter = d.erase(iter);
            break;
        }
    }
}

double UE::send(int slot_id){

        //BS bs;
        //int remaining_data_size;
        //int original_data_size;
        //int send_begin;
        //int time_stamp;
        //int direction; //UL:0, DL:1

        #ifdef DEBUG
        cout << "!HetNet_toc_UE send\n";
        #endif // DEBUG
        
        Link *up_link;
        double capacity;
        vector<Link *> delete_link_list_ul;

        for (Data *d: data_list){
            //i_env, (bs, data_size, start_bool, _, _, direction) in enumerate(self.data_list):
            
            #ifdef DEBUG
            cout << "!HetNet_toc_UE send2\n";
            #endif // DEBUG
            if (d->direction == 0){
                //##print(str(bs.get_name())+","+str(data_size)+","+str(x)+","+str(y))
                #ifdef DEBUG
                cout << "!HetNet_toc_UE send3\n";
                #endif // DEBUG
                up_link = find_link(d->bs, this, 0);
                if (up_link != NULL){
                    //##print("find link"+str(bs.get_connecting_UE_name()))
                    #ifdef DEBUG
                    cout << "!HetNet_toc_UE send4\n";
                    printf("bs.state %d, %d, %d\n", (*d->bs).id, (*d->bs).get_state(), slot_id);
                    for (int tmp = 0; tmp<10; tmp++){
                        printf("b %d, %d\n", tmp, (*d->bs).config[tmp]);                    
                    }
                    #endif // DEBUG
                    if ((*d->bs).get_state() == 0){
                        capacity = (*up_link).get_capacity();
                        #ifdef DEBUG
                        printf("!HetNet_toc_UE send capacity: %e, %d\n", capacity, (*up_link).id);
                        #endif // DEBUG
                        if (capacity > 0.000001){
                            #ifdef DEBUG
                            printf("!HetNet_toc_UE send 42: %f\n", d->remaining_data_size);
                            #endif // DEBUG
                            d->send_begin = 1;
                            //#print("uplink capacity, bs:" + str(capacity)+","+str(bs.get_name()))
                            //#print("bs state:" + str(bs.get_state()))
                            //#print("ul data before:" + str(self.data_list))
                            if (d->remaining_data_size > capacity){
                                #ifdef DEBUG
                                printf("!HetNet_toc_UE send 43\n");
                                #endif // DEBUG
                                append_sentdata(d, capacity, 0);
                                (*up_link).consump_capacity(capacity); //########
                                //#self.append_sentdata(self.data_list[i_env], capacity/self.data_list[i_env][1], "ul")
                                d->remaining_data_size = d->remaining_data_size - capacity;
                                //#print("send:"+str(capacity))
                            }else{
                                #ifdef DEBUG
                                printf("!HetNet_toc_UE send 44\n");
                                #endif // DEBUG
                                append_sentdata(d, d->remaining_data_size, 0);
                                (*up_link).consump_capacity(d->remaining_data_size); //########
                                //#print("send2:"+str(self.data_list[i_env][1]))
                                //#self.append_sentdata(self.data_list[i_env], 1, "ul")
                                d->remaining_data_size = 0;
                            }
                            if (d->remaining_data_size == 0){
                                #ifdef DEBUG
                                printf("!HetNet_toc_UE send 45\n");
                                #endif // DEBUG
                                calc_UE_throughput(d, 0);
                                removeData(data_list, d);
                                delete_link_list_ul.push_back(up_link);
                            } else if  (d->time_stamp > 50){
                                removeData(data_list, d);
                                delete_link_list_ul.push_back(up_link);
                            }
                        }
                    }
                }
            }
        }
}

double UE::send_test(int slot_id){

        //BS bs;
        //int remaining_data_size;
        //int original_data_size;
        //int send_begin;
        //int time_stamp;
        //int direction; //UL:0, DL:1
        
        Link *up_link;
        double capacity;
        vector<Link *> delete_link_list_ul;

        #ifdef DEBUG
        cout << "!HetNet_toc_UE send_test\n";
        #endif // DEBUG

        for (Data *d: data_list_copy){
            //i_env, (bs, data_size, start_bool, _, _, direction) in enumerate(self.data_list):
            
            #ifdef DEBUG
            cout << "!HetNet_toc_UE send_test2\n";
            #endif // DEBUG
            
            if (d->direction == 0){
                //##print(str(bs.get_name())+","+str(data_size)+","+str(x)+","+str(y))
                up_link = find_link(d->bs, this, 0);
                #ifdef DEBUG
                cout << "!HetNet_toc_UE send_test3\n";
                #endif // DEBUG
                if (up_link != NULL){
                    //##print("find link"+str(bs.get_connecting_UE_name()))
                    #ifdef DEBUG
                    cout << "!HetNet_toc_UE send_test4\n";
                    printf("bs.state %d, %d, %d\n", (*d->bs).id, (*d->bs).get_state(), slot_id);
                    #endif // DEBUG
                    if ((*d->bs).get_state() == 0){
                        capacity = (*up_link).get_capacity();
                        #ifdef DEBUG
                        printf("!HetNet_toc_UE send_test capacity: %e, %d\n", capacity, (*up_link).id);
                        #endif // DEBUG
                        if (capacity > 0.000001){
                            #ifdef DEBUG
                            printf("!HetNet_toc_UE send_test 42: %f\n", d->remaining_data_size);
                            #endif // DEBUG
                            d->send_begin = 1;
                            //#print("uplink capacity, bs:" + str(capacity)+","+str(bs.get_name()))
                            //#print("bs state:" + str(bs.get_state()))
                            //#print("ul data before:" + str(self.data_list))
                            if (d->remaining_data_size > capacity){
                                #ifdef DEBUG
                                printf("!HetNet_toc_UE send_test 43\n");
                                #endif // DEBUG
                                append_sentdata(d, capacity, 0);
                                (*up_link).consump_capacity(capacity); //########
                                //#self.append_sentdata(self.data_list[i_env], capacity/self.data_list[i_env][1], "ul")
                                d->remaining_data_size = d->remaining_data_size - capacity;
                                //#print("send:"+str(capacity))
                            }else{
                                #ifdef DEBUG
                                printf("!HetNet_toc_UE send_test 44\n");
                                #endif // DEBUG
                                append_sentdata(d, d->remaining_data_size, 0);
                                (*up_link).consump_capacity(d->remaining_data_size); //########
                                //#print("send2:"+str(self.data_list[i_env][1]))
                                //#self.append_sentdata(self.data_list[i_env], 1, "ul")
                                d->remaining_data_size = 0;
                            }
                        }
                    }
                }
            }
        }


}



double UE::recieve(int slot_id){

        //BS bs;
        //int remaining_data_size;
        //int original_data_size;
        //int send_begin;
        //int time_stamp;
        //int direction; //UL:0, DL:1
        
        #ifdef DEBUG
        cout << "!HetNet_toc_UE recieve\n";
        printf("data_list.size():%d\n", data_list.size());
        #endif // DEBUG

        Link *up_link;
        double capacity;
        vector<Link *> delete_link_list_dl;

        for (Data *d: data_list){
            //i_env, (bs, data_size, start_bool, _, _, direction) in enumerate(self.data_list):
            #ifdef DEBUG
            printf("!HetNet_toc_UE recieve1\n");
            #endif // DEBUG
            
            if (d->direction == 1){
                #ifdef DEBUG
                printf("!HetNet_toc_UE recieve2\n");
                #endif // DEBUG
                //##print(str(bs.get_name())+","+str(data_size)+","+str(x)+","+str(y))
                up_link = find_link(d->bs, this, 1);
                if (up_link != NULL){
                    //##print("find link"+str(bs.get_connecting_UE_name()))
                    #ifdef DEBUG
                    printf("!HetNet_toc_UE recieve3\n");
                    #endif // DEBUG
                    if ((*d->bs).get_state() == 1){
                        capacity = (*up_link).get_capacity();
                        #ifdef DEBUG
                        printf("!HetNet_toc_UE recieve capacity: %f\n", capacity);
                        #endif // DEBUG
                        if (capacity > 0.000001){
                            d->send_begin = 1;
                            //#print("uplink capacity, bs:" + str(capacity)+","+str(bs.get_name()))
                            //#print("bs state:" + str(bs.get_state()))
                            //#print("dl data before:" + str(self.data_list))
                            if (d->remaining_data_size > capacity){
                                append_sentdata(d, capacity, 1);
                                (*up_link).consump_capacity(capacity); //########
                                //#self.append_sentdata(self.data_list[i_env], capacity/self.data_list[i_env][1], "dl")
                                d->remaining_data_size = d->remaining_data_size - capacity;
                                //#print("send:"+str(capacity))
                            }else{
                                append_sentdata(d, d->remaining_data_size, 1);
                                (*up_link).consump_capacity(d->remaining_data_size); //########
                                //#print("send2:"+str(self.data_list[i_env][1]))
                                //#self.append_sentdata(self.data_list[i_env], 1, "dl")
                                d->remaining_data_size = 0;
                            }
                            if (d->remaining_data_size == 0){
                                calc_UE_throughput(d, 1);
                                removeData(data_list, d);
                                delete_link_list_dl.push_back(up_link);
                            } else if  (d->time_stamp > 50){
                                removeData(data_list, d);
                                delete_link_list_dl.push_back(up_link);
                            }
                        }
                    }
                }
            }
        }

}


double UE::recieve_test(int slot_id){

        //BS bs;
        //int remaining_data_size;
        //int original_data_size;
        //int send_begin;
        //int time_stamp;
        //int direction; //UL:0, DL:1
        
        Link *up_link;
        double capacity;
        vector<Link *> delete_link_list_dl;

        #ifdef DEBUG
        cout << "!HetNet_toc_UE recieve_test\n";
        printf("data_list_copy.size():%d\n", data_list_copy.size());
        #endif // DEBUG

        for (Data *d: data_list_copy){
            //i_env, (bs, data_size, start_bool, _, _, direction) in enumerate(self.data_list):
            #ifdef DEBUG
            printf("!HetNet_toc_UE recieve_test1\n");
            #endif // DEBUG
            
            if (d->direction == 1){
                #ifdef DEBUG
                printf("!HetNet_toc_UE recieve_test2\n");
                #endif // DEBUG
                //##print(str(bs.get_name())+","+str(data_size)+","+str(x)+","+str(y))
                up_link = find_link(d->bs, this, 1);
                if (up_link != NULL){
                    //##print("find link"+str(bs.get_connecting_UE_name()))
                    #ifdef DEBUG
                    printf("!HetNet_toc_UE recieve_test3\n");
                    #endif // DEBUG
                    if ((*d->bs).get_state() == 1){
                        capacity = (*up_link).get_capacity();
                        #ifdef DEBUG
                        printf("!HetNet_toc_UE recieve_test capacity: %f\n", capacity);
                        #endif // DEBUG
                        if (capacity > 0.000001){
                            d->send_begin = 1;
                            //#print("uplink capacity, bs:" + str(capacity)+","+str(bs.get_name()))
                            //#print("bs state:" + str(bs.get_state()))
                            //#print("dl data before:" + str(self.data_list))
                            if (d->remaining_data_size > capacity){
                                append_sentdata(d, capacity, 1);
                                (*up_link).consump_capacity(capacity); //########
                                //#self.append_sentdata(self.data_list[i_env], capacity/self.data_list[i_env][1], "dl")
                                d->remaining_data_size = d->remaining_data_size - capacity;
                                //#print("send:"+str(capacity))
                            }else{
                                append_sentdata(d, d->remaining_data_size, 1);
                                (*up_link).consump_capacity(d->remaining_data_size); //########
                                //#print("send2:"+str(self.data_list[i_env][1]))
                                //#self.append_sentdata(self.data_list[i_env], 1, "dl")
                                d->remaining_data_size = 0;
                            }
                        }
                    }
                }
            }
        }

}

void UE::clear_links_ul(){
        for (Link *i : delete_link_list_ul){
            delete_link_ul(i);
        }
        delete_link_list_ul.clear();
}

void UE::clear_links_dl(){
        for (Link *i : delete_link_list_dl){
            delete_link_dl(i);
        }
        delete_link_list_dl.clear();
}    


void UE::delete_link_ul(Link *i){//: #-> Link
        (*sim).del_link_ul(i);
}

void UE::delete_link_dl(Link *i){//: #-> Link       
        (*sim).del_link_dl(i);               
}
        
void UE::renew_time_stamp(){
        for (Data *i : data_list){
            //#if i[3] == 1:
            //#    i[4] = i[4] + 1
            if (i->send_begin == 1){
                i->time_stamp = i->time_stamp + 1;
            }       
        } 
}

BS *UE::get_inside_BS(){
        return(inside_BS);
}

void UE::set_inside_BS(BS *x){
        inside_BS = x;
}

void UE::set_connecting_BS(BS *x){
        connecting_BS = x;
}


BS *UE::find_BS(BS *old_bs){
    
        double mbs_radius = 500;
        double sbs_radius = 40;
        double distance;

        //print("xy_pos:"+str(self.get_xyz()))
        for (BS *bs : (*sim).BS_list){
            if ((*bs).get_type() == "SBS"){
                distance = calc_d((*bs).get_xyz(), get_xyz());
                //print("find_BS2:"+str(self.get_name())+", "+str(self.get_xyz())+", "+str(bs.get_name())+", "+str(bs.get_xyz())+", "+str(distance))
                if (distance < (sbs_radius /2)){
                    //print("find_BS_sbs:"+str(self.get_name())+", "+str(bs.get_name())+", "+str(self.sim.time_step))
                    return(bs);
                }
            }
        }
        
        vector<BS *> mbs_list;
        vector<BS *> mbs_min_list;
        double min_value = 10000;
        for (BS *bs : (*sim).BS_list){
            if ((*bs).get_type() == "MBS"){
                distance = calc_d((*bs).get_xyz(), get_xyz());
                //print("bs_pos:"+str(bs.get_xyz())+"ue_pos:"+str(self.get_xyz())+"distance:"+str(distance)+","+str(self.get_name()))
                if (distance < (mbs_radius /2)){
                    if (bs == old_bs){
                        return(bs);
                    }
                    mbs_list.push_back(bs);
                }
                if (distance < min_value){
                    min_value = distance;
                    mbs_min_list.push_back(bs);
                }else if (distance == min_value){
                    mbs_min_list.push_back(bs);
                }
            }
        }
        
        if (mbs_list.size() == 0){
            for (int i=0; i<mbs_min_list.size(); i++){
                mbs_list.push_back(mbs_min_list[i]);
            }
        }

        double min_inside = 1000;
        BS *min_bs;
        vector<UE *> ue_inside;
        for (BS *bs : mbs_list){
            ue_inside = (*bs).get_inside_UE();
            if (ue_inside.size() < min_inside){
                min_inside = ue_inside.size();
                min_bs = bs;
            }
        }                    
        //print("find_BS_mbs:"+str(min_bs.get_name())+", "+str(self.get_name()))
        return(min_bs);
}

void UE::remove_connecting_BS(){
        connecting_BS = NULL;
}

vector<Data *> UE::get_data_list(){
        return(data_list);
}

Link * UE::gen_link(BS *lbs, UE *lue, int direction){
        
        bool connected = false;
        
        Link *e_link = find_link(lbs, lue, direction);
        if (e_link != NULL){
            //#print("found")
            return(e_link);
        }
        //#print("notfound")

        if (direction == 0){
            connected = (*lbs).set_connecting_UE_dl(lue);
            //#print("connected dl:"+str(s.get_name())+", "+str(connected))
        }else{
            connected = (*lbs).set_connecting_UE_ul(lue);
            //#print("connected ul:"+str(d.get_name())+", "+str(connected))
        }

        if (connected == true){
            Link *new_link;
            new_link = new Link(sim, lbs, lue, direction);
            (*sim).add_link(new_link);
            (*(*new_link).get_ue()).set_connecting_BS((*new_link).get_bs());
            //#print("gen_link: bs:"+str(link.get_bs().get_name()))

            return(new_link);
        }else{
            return(NULL);
        }
}

int UE::get_id(){
        return(id);
}

bool UE::not_at_gate(){
        //#4270.1503, -40728.6466
        tuple<double, double, double> position = get_xyz();
        double alpha = 0.001;
        if ((get<0>(position) > (4270.1503-alpha)) && (get<0>(position) < (4270.1503+alpha)) && (get<1>(position) > (-40728.6466-alpha)) && (get<1>(position) < (-40728.6466+alpha))){
            return(false);
        }else{
            return(true);
        }
}

void UE::gen_data(BS *bs, int data_size, int direction){

        Data *new_data = new Data;
        new_data->bs = bs;
        new_data->remaining_data_size = data_size;
        new_data->original_data_size = data_size;
        new_data->send_begin = 0;
        new_data->time_stamp = 0;
        new_data->direction = direction; //UL:0, DL:1
        new_data->id = max_id;
            
        max_id = max_id + 1;

        data_list.push_back(new_data);
        //# connected bs, remaining data size, original data size, sending begin, time stamp, direction
}
        
void UE::gen_random_data_ue(int time_step){

        //print("not_at_gate:"+str(self.get_name())+", "+str(self.not_at_gate()))
        #ifdef DEBUG
        cout << "!HetNet_toc_UE gen_random_data_ue\n";
        #endif // DEBUG

        if (not_at_gate()){

            int repeat_interval = 100;

            //int count1 = (*sim).ul_random[get_id()][time_step%repeat_interval];
            double count1 = ((*sim).expp_ul[get_id()]).operator() ((*sim).rand_pointer_ul[get_id()]);
            #ifdef DEBUG
            cout << "!HetNet_toc_UE gen_random_data_ue1\n";
            printf("count1 : %f\n", count1);
            #endif // DEBUG
            for (int i=0; i < count1; i++){
                gen_data(inside_BS, data_size, 0);
            }
                //print("gen_random_data_ue_ul:"+str(self.get_name())+", "+str(self.inside_BS.get_name()))
            //int count2 = (*sim).dl_random[get_id()][time_step%repeat_interval];
            double count2 = ((*sim).expp_dl[get_id()]).operator() ((*sim).rand_pointer_dl[get_id()]);
            #ifdef DEBUG
            cout << "!HetNet_toc_UE gen_random_data_ue2\n";
            printf("count2 : %f\n", count2);
            #endif // DEBUG
            //#ifdef DEBUG
            //printf("count2 : %d\n", count2);
            //#endif // DEBUG
            for (int i=0; i < count2; i++){
                gen_data(inside_BS, data_size, 1);
            }
                //print("gen_random_data_ue_dl:"+str(self.get_name())+", "+str(self.inside_BS.get_name()))
        }
        
        //print("not_at_gate:"+str(self.get_name())+", "+str(self.not_at_gate()))
        #ifdef DEBUG
        cout << "!HetNet_toc_UE gen_random_data_ue3\n";
        printf("data_list.size():%d, %d \n", data_list.size(), time_step);
        #endif // DEBUG
        
}

void UE::set_xaxis(double x){
        x_axis = x;
}
        
void UE::set_yaxis(double y){
        y_axis = y;
}

