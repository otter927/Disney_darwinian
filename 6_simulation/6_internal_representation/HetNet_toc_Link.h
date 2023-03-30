#include <stdio.h>
#include <string> 
#include <cstring> 
#include <cmath> 
#include <vector>
#include <list>

#pragma once

using namespace std;

//class BS():
//class MBS(BS):
//class SBS(BS):
//class UE():
//class Link():
//class Simulator():

//class Simulator;

class BS;
class UE;
class Simulator;


class Link
{

    public:
    Simulator *sim; 
    BS *link_bs;
    UE *link_ue;
    int direction; //0: UP, 1: DOWN
    const int UL = 0;
    const int DL = 1;
    double capacity;
    double sinr;
    int id;


    Link(Simulator *sim_x, BS *lbs, UE *lue, int direction_x);
    bool is_active(void);
    BS *get_bs(void);
    UE *get_ue(void);
    int get_direction(void);
    void set_capacity(double c);
    void set_sinr(double s);
    double get_capacity(void);
    double get_sinr(void);
    void consump_capacity(double x);
    void change_bs(BS *x);
};

