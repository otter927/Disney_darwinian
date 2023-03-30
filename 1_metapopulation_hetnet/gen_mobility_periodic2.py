from hetnet import HetNet

import sys
import random
import math

import random
import csv
import copy

import numpy as np


class UE_mobility():

    def __init__(self, x, y, speed, kind):

        self.x_axis = x
        self.y_axis = y
        self.ini_x_axis = x
        self.ini_y_axis = y
        
        self.position_list = []
        self.pos_i = 0

        self.speed = speed
        self.kind = kind

        self.x_grid = 300
        self.y_grid = 300
        self.x_lim_r = 1200
        self.y_lim_r = 1200
        #self.x_lim_r = 1800
        #self.y_lim_r = 1800
        self.x_lim_l = 300
        self.y_lim_l = 300
        
        self.direction = random.randint(0,3)
       
        self.turn_right_prob = 1.0/3.0
        self.turn_left_prob = 1.0/3.0
        self.go_strait_prob = 1.0/3.0

    def get_i(self):
        return(len(self.position_list))
        
    def get_kind(self):
        return(self.kind)

    def get_position(self, ue_i):
        if ue_i == 0:
            self.pos_i = (self.pos_i + 1) % len(self.position_list)
        ans = self.position_list[(self.pos_i + ue_i) % len(self.position_list)]
        return(ans)

    def add_position_list(self, xy):
        self.position_list.append(xy)

    def bool_return(self):
        if pow((self.x_axis - self.ini_x_axis), 2) + pow((self.y_axis - self.ini_y_axis), 2) < pow(100, 2):
            return(True)
        else:
            return(False)

    def bool_leave(self):
        if pow((self.x_axis - self.ini_x_axis), 2) + pow((self.y_axis - self.ini_y_axis), 2) > pow(100, 2):
            return(True)
        else:
            return(False)

    def get_xyz(self):
        return((self.x_axis, self.y_axis, 0))

    def get_xy(self):
        return([self.x_axis, self.y_axis])


    def move(self):
        ##print("move:"+str(self.get_xyz())+" ,"+str(self.direction))
        self.flag = False
        self.move_t(self.speed)
        return([self.x_axis, self.y_axis])
    
    def move_t(self, n): #0:up, 1:right, 2:down, 3:left, 4:stay
        #print("move_t:"+str(self.direction))
        if self.direction == 0:
            self.moving_up(n)
        elif self.direction == 1:
            self.moving_right(n)
        elif self.direction == 2:
            self.moving_down(n)
        elif self.direction == 3:
            self.moving_left(n)  
        else:
            self.coner()   
    
    def moving_up(self, n): #0
        self.flag_end = False
        if self.y_axis == self.y_lim_r:
            self.y_axis = self.y_lim_l
            self.flag_end = True
            ##print("mvoeend")
        pre_y_axis = self.y_axis
        self.y_axis = self.y_axis + n
        #if self.y_axis >= self.y_lim_r:
        #    flag = True
        if ((self.flag == False) and(self.flag_end == True)) or (pre_y_axis == self.y_lim_r) or ( (self.flag == False) and (((pre_y_axis - self.y_lim_l) // self.y_grid) != ((self.y_axis - self.y_lim_l) // self.y_grid))):
            self.coner()
            tmp_y_axis = self.y_axis
            ##print("pre_y_axis:"+str(pre_y_axis))
            #self.y_axis = ((pre_y_axis - self.y_lim_l) // self.y_grid) * self.y_grid + self.y_lim_l
            self.y_axis = ((tmp_y_axis - self.y_lim_l) // self.y_grid) * self.y_grid + self.y_lim_l
            ##print("tmp_y_axis"+str(tmp_y_axis) + "self.y_axis:"+str(self.y_axis))
            self.move_t(tmp_y_axis - self.y_axis)
        self.flag = False
    
    def moving_down(self, n): #2
        self.flag_end = False
        if self.y_axis == self.y_lim_l:
            self.y_axis = self.y_lim_r
            self.flag_end = True
            ##print("mvoeend")
        pre_y_axis = self.y_axis
        self.y_axis = self.y_axis - n       
        #if self.y_axis <= self.y_lim_l:
        #    flag = True
        if ((self.flag == False) and(self.flag_end == True)) or (pre_y_axis == self.y_lim_l) or ( (self.flag == False) and (((pre_y_axis - self.y_lim_l) // self.y_grid) != ((self.y_axis - self.y_lim_l) // self.y_grid))):
            self.coner()
            tmp_y_axis = self.y_axis
            ##print("pre_y_axis:"+str(pre_y_axis))
            self.y_axis = ((pre_y_axis - self.y_lim_l)// self.y_grid) * self.y_grid + self.y_lim_l
            ##print("self.y_axis:"+str(self.y_axis) + "tmp_y_axis"+str(tmp_y_axis))
            self.move_t(self.y_axis - tmp_y_axis)
        self.flag = False
            
    def moving_right(self, n): #1
        self.flag_end = False
        if self.x_axis == self.x_lim_r:
            self.x_axis = self.x_lim_l
            self.flag_end = True
            ##print("mvoeend")
        pre_x_axis = self.x_axis
        self.x_axis = self.x_axis + n
        #if self.x_axis >= self.x_lim_r:
        #    flag = True
        if ((self.flag == False) and(self.flag_end == True)) or (pre_x_axis == self.x_lim_r) or ( (self.flag == False) and (((pre_x_axis - self.x_lim_l) // self.x_grid) != ((self.x_axis - self.x_lim_l) // self.x_grid))):
            self.coner()
            tmp_x_axis = self.x_axis
            ##print("pre_x_axis:"+str(pre_x_axis))
            #self.x_axis = ((pre_x_axis - self.x_lim_l) // self.x_grid) * self.x_grid + self.x_lim_l
            self.x_axis = ((tmp_x_axis - self.x_lim_l) // self.x_grid) * self.x_grid + self.x_lim_l
            ##print("tmp_x_axis"+str(tmp_x_axis) + "self.x_axis:"+str(self.x_axis))
            self.move_t(tmp_x_axis - self.x_axis)
        self.flag = False
    
    def moving_left(self, n): #3
        self.flag_end = False
        if self.x_axis == self.x_lim_l:
            self.x_axis = self.x_lim_r
            self.flag_end = True
            ##print("mvoeend")
        pre_x_axis = self.x_axis
        ##print("self.x_axis0:"+str(self.x_axis))
        self.x_axis = self.x_axis - n
        ##print("self.x_axis1:"+str(self.x_axis))
        #if self.x_axis <= self.x_lim_l:
        #    flag = True
        #    print("flag:True")
        ##print("self.x_axis2:"+str(self.x_axis))
        ##print("(pre_x_axis - self.x_lim_l) "+str(pre_x_axis - self.x_lim_l) )
        ##print("(self.x_axis - self.x_lim_l)"+str(self.x_axis - self.x_lim_l))
        if ((self.flag == False) and(self.flag_end == True)) or (pre_x_axis == self.x_lim_l) or ( (self.flag == False) and (((pre_x_axis - self.x_lim_l) // self.x_grid) != ((self.x_axis - self.x_lim_l) // self.x_grid))):
            self.coner()
            tmp_x_axis = self.x_axis
            self.x_axis = ((pre_x_axis - self.x_lim_l) // self.x_grid) * self.x_grid + self.x_lim_l
            ##print("self.x_axis:"+str(self.x_axis) + "tmp_x_axis"+str(tmp_x_axis))
            self.move_t(self.x_axis - tmp_x_axis)
        self.flag = False
            
    def coner(self):
        ##print("coner")
        self.flag = True
#        if self.kind == "Ped":
#            prob_ped = random.random()
#            if prob_ped < (1.0 - 1.0/300):
#                #print("stay:true,"+str(prob_ped))
#                self.direction = 4
#                return()
#        else:
#            prob_ped = random.random()
#            if prob_ped < (1.0 - 1.0/10):
#                #print("stay:true,"+str(prob_ped))
#                self.direction = 4
#                return()
            #print("stay:false,"+str(prob_ped))
                
        #if flag == True:
        #    prob = random.random() * (self.turn_right_prob + self.turn_left_prob)
        #    #print("prob:"+str(prob))
        #else:
        
        prob = random.random()
        pre_direction = self.direction
        if self.turn_right_prob >= prob:
            self.direction = (self.direction + 1) % 4
        elif self.turn_right_prob + self.turn_left_prob >= prob:
            self.direction = (self.direction - 1) % 4
            
        ##print("flag:"+str(self.flag)+", "+str(prob)+", "+str(pre_direction)+", "+str(self.direction))


x_grid = 300
y_grid = 300
x_lim_r = 1200
y_lim_r = 1200
x_lim_l = 300
y_lim_l = 300

ped_speed = 5
veh_speed = 20
uav_speed = 50


#prob_ped = 0.3
#prob_ped = 0.7

#prob_ped = 0.5

#prob_ped = 1.0
#prob_ped = 0.0
#prob_ped = 0.1

#prob_ped = 0.9
#prob_ped = 0.5

#prob_ped = 0.1
#prob_ped = 0.3
#prob_ped = 0.2

args = sys.argv


prob_ped = float(args[1])
diverse = float(args[2])
#prob_ped = random.random()
#uav_ped = float(args[2])

random.seed(args[3])

print(args[1] + "_" + args[2]+ "_" + args[3])

#ue_random = np.random.exponential(4,16)
##ue_random = np.random.normal(4.0, 1.0, 16)
#np.random.poisson(arrival_rate, 20) ##max_num self.arrival_rate * self.subframe_duration
##print(ue_random)
##ue_random = ue_random.astype(int)
##print(ue_random)



UE_ped_list = []
UE_veh_list = []
for i in range(x_lim_l, x_lim_r+x_grid, x_grid):
    for j in range(y_lim_l, y_lim_r+y_grid, y_grid):
        #ped
        ue = UE_mobility(i, j, random.randrange(ped_speed-5, ped_speed+5), "Ped")
        UE_ped_list.append(ue)
        #veh
        ue = UE_mobility(i, j, random.randrange(veh_speed-10, veh_speed+10), "Veh")
        UE_veh_list.append(ue)

repeat_scale = 100

for  ue in UE_ped_list:
    moving = False
    for i in range(repeat_scale):
        xy = ue.move()
        if ue.bool_leave() == True:
            moving = True
        if (moving == True) and (ue.bool_return() == True):
            print(ue.get_i())
            break
        ue.add_position_list(xy)

for  ue in UE_veh_list:
    moving = False
    for i in range(repeat_scale):
        xy = ue.move()
        if ue.bool_leave() == True:
            moving = True
        if (moving == True) and (ue.bool_return() == True):
            print(str(ue.get_kind()) + ":" + str(ue.get_i()))
            break
        ue.add_position_list(xy)



select_num = int(16 * diverse)
print("select num:"+str(select_num)) #patterns

UE_ped_list_select = random.sample(UE_ped_list, select_num)
UE_veh_list_select = random.sample(UE_veh_list, select_num)

max_time = 16.0* 4.0 / int(16 * diverse) #20

ped_times = int(max_time * prob_ped) #14
veh_times = int(max_time * (1 - prob_ped))#6

print("ped times:"+str(ped_times)) #same patterns
print("veh times:"+str(veh_times)) #same patterns


#for i in range(100):
#    for j in range(ped_times):
#        for ue in UE_ped_list_select:
#            #print("ped:"+str(j * 10))
#            xy = ue.get_position(j * 10)
#    #print("pedend")
#    for j in range(veh_times):
#        for  ue in UE_veh_list_select:
#            #print("veh:"+str(j * 10))
#            xy = ue.get_position(j * 10)
#    #print("vehend")

#position = []
#position_list = []
#for j in range(ped_times):
#    for ue in UE_ped_list_select:
#        xy = ue.get_position(j * 10)
#        position_list.extend(xy)
#for j in range(veh_times):
#    for  ue in UE_veh_list_select:
#        xy = ue.get_position(j * 10)
#        position_list.extend(xy)
#
#for i in range(600):
#    position.append(position_list)    




position = []
for i in range(10000):
#for i in range(600):
    position_list = []
    for j in range(ped_times): #14
        for ue in UE_ped_list_select:
            #print("ped:"+str(j * 10))
            xy = ue.get_position(j * 10)
            #print("j:"+str(j)+"xy:"+str(xy))
            position_list.extend(xy)
    #print("pedend")
    for j in range(veh_times): #6
        for  ue in UE_veh_list_select:
            #print("veh:"+str(j * 10))
            xy = ue.get_position(j * 10)
            position_list.extend(xy)
    #print("vehend")
    position.append(position_list)    




#f = open("data/position"+str(prob_ped).replace('.', '')+"_"+str(uav_ped).replace('.', '')+"_"+args[3]+".csv", 'w')
f = open("data/position"+args[1]+"_"+args[2]+"_"+args[3]+".csv", 'w')
writer = csv.writer(f)
writer.writerows(position)           
