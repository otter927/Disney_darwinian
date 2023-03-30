from hetnet import HetNet

import sys
import random
import math

import random
import csv
import numpy as np
import pandas as pd


class UE_mobility():

    def __init__(self, source, distination, x_axis, y_axis, speed):

        self.x_center = x_axis[7]
        self.y_center = y_axis[7]


        self.source_id = source
        self.dist_id = distination
        self.x_current = x_axis[self.source_id]
        self.y_current = y_axis[self.source_id]
        self.x_source = x_axis[self.source_id]
        self.y_source = y_axis[self.source_id]
        self.x_dist = x_axis[self.dist_id]
        self.y_dist = y_axis[self.dist_id]
        self.c_flag = self.if_c_flag();
        self.move_d = 0
        self.to_center = dis(self.x_current, self.y_current, self.x_center, self.y_center)

        self.speed = speed

        self.x_hist = [self.x_current]
        self.y_hist = [self.y_current]
        
        print("source_id:"+str(self.source_id))
        print("dist_id:"+str(self.dist_id))
        print("c_flag:"+str(self.c_flag))
        print("to_center:"+str(self.to_center))
        print("x_current:"+str(self.x_current))


    def if_c_flag(self):
        if (self.source_id == (self.dist_id + 1)%7) or (self.source_id == (self.dist_id - 1)%7) or (self.source_id == self.dist_id):
            #print("s:"+str(self.source_id)+"d:"+str(self.dist_id)+"true")
            return(0)
        else:
            #print("s:"+str(self.source_id)+"d:"+str(self.dist_id)+"false")
            return(1)

    def get_xy(self):
        return((self.x_current, self.y_current))

    def set_distination(self, dist):
        
        print("set dist")
        print("prev_source_id:"+str(self.source_id))
        print("prev_dist_id:"+str(self.dist_id))



        self.source_id = self.dist_id
        self.dist_id = dist
        self.x_current = x_axis[self.source_id]
        self.y_current = y_axis[self.source_id]
        self.x_source = x_axis[self.source_id]
        self.y_source = y_axis[self.source_id]
        self.x_dist = x_axis[self.dist_id]
        self.y_dist = y_axis[self.dist_id]
        self.c_flag = self.if_c_flag();
        self.move_d = 0
        self.to_center = dis(self.x_current, self.y_current, self.x_center, self.y_center)

        print("source_id:"+str(self.source_id))
        print("dist_id:"+str(self.dist_id))
        print("c_flag:"+str(self.c_flag))
        print("to_center:"+str(self.to_center))


    def move(self):
        self.move_d = self.move_d + self.speed #moved ruiseki
        beyond_c_flag = 0

        #print("c_flag:"+str(self.c_flag))
        #print("to_center:"+str(self.to_center))
        #print("move_d:"+str(self.move_d))


        if self.to_center < self.move_d:
            beyond_c_flag = 1
            self.move_d_cut = self.move_d - self.to_center
            #print("beyond_c_flag:"+str(beyond_c_flag))


        if self.c_flag == 0:
            x, y = self.user_position(self.x_source, self.y_source, self.x_dist, self.y_dist, self.move_d)
        elif (self.c_flag == 1) and (beyond_c_flag == 0):
            #print("xs:"+str(self.x_source))
            #print("ys:"+str(self.y_source))
            #print("xd:"+str(self.x_center))
            #print("yd:"+str(self.y_center))
            x, y = self.user_position(self.x_source, self.y_source, self.x_center, self.y_center, self.move_d)
        else:
            #print("c_flag:"+str(self.c_flag))
            #print("beyond_c_flag:"+str(beyond_c_flag))
            x, y = self.user_position(self.x_center, self.y_center, self.x_dist, self.y_dist, self.move_d_cut)
               

        if x != None:
            self.x_current = x
            self.y_current = y
        self.x_hist.append(self.x_current)    
        self.y_hist.append(self.y_current)    
        print("x_hist:"+str(self.x_hist))
        print("y_hist:"+str(self.y_hist))


    def user_position(self, x1, y1, x2, y2, move_d):
        #print("x1:"+str(x1))
        #print("y1:"+str(y1))
        #print("x2:"+str(x2))
        #print("y2:"+str(y2))
        dis = math.sqrt(pow((x1 - x2), 2) + pow((y1 - y2), 2))
        #print("move_d:"+str(self.move_d))
        #print("dis:"+str(dis))
        if move_d <= dis:
            ratio = move_d/dis*1.0
            #print("ratio:"+str(ratio))
            new_x = x1 + (x2 - x1) * ratio
            new_y = y1 + (y2 - y1) * ratio
            #print("1c:"+str(new_x)+", "+str(new_y))
            return(new_x, new_y)
        else:
            #print("2c:"+str(x2)+", "+str(y2))
            return(x2, y2)

def dis(x1, y1, x2, y2):
    dis = math.sqrt(pow((x1 - x2), 2) + pow((y1 - y2), 2))
    return(dis)


def at_dist(ue_x, ue_y, bs_x_list, bs_y_list, dist_id):
    if math.isclose(ue_x, bs_x_list[dist_id]) and math.isclose(ue_y, bs_y_list[dist_id]):
        print("at_dist:T")
        return(True)
    else:
        print("at_dist:F"+str(ue_x)+", "+str(bs_x_list[dist_id])+str(ue_y)+", "+str(bs_y_list[dist_id]))
        return(False)
        
def select_distination(current, transit_matrix):
    prob = transit_matrix[current]
    #print("prob:"+str(prob))
    r = random.random()
    #print("prob:"+str(prob))
    #print("r:"+str(r))
    for i_env, i in enumerate(prob):
        if r > i:
            r = r - i
            #print("r2:"+str(r))
        else:
            #print("i_env:"+str(i_env))
            return(i_env)
    #print("i_env:"+str(len(prob)-1))
    return(len(prob)-1)


y_axis = np.zeros(8)
x_axis = np.zeros(8)

y_axis[0] = -40576.0916
x_axis[0] = 4292.7195

y_axis[1] = -40645.3577
x_axis[1] = 4439.9288

y_axis[2] = -40811.6655
x_axis[2] = 4643.7977

y_axis[3] = -40895.0254
x_axis[3] = 4338.1594

y_axis[4] = -41033.8040
x_axis[4] = 4123.1142

y_axis[5] = -40784.2280
x_axis[5] = 4032.4274

y_axis[6] = -40479.0878
x_axis[6] = 4145.4995

y_axis[7] = -40728.6466
x_axis[7] = 4270.1503


int_time = 30 #30 min interval

speed = 40#40 #ippann 80 dakedo, te-mapa-kudakara


#transit = [[7.30776841664085e-08,	4.00873751792823e-08,	5.69150162688805e-08,	1.39086805165256e-07,	0.118433419463143,	1.76317334531438e-07,	-34.8815660950526],
#[34.9999991779511,	2.75384203757154e-08,	5.19416385060944e-08,	7.02378693634628e-08,	9.50978870442628e-08,	7.69310501051483e-08,	4.09630018739373e-08],
#[1.70928591916442e-07,	4.99999993879036,	7.12614447562018e-08,	1.97188578719781e-07,	0.114711545342064,	2.18687800041418e-07,	-3.96737086750230],
#[2.02543318844782e-07,	1.27714837990928e-08,	24.9999996778758,	1.69157959866015e-07,	44.9999984904448,	1.80552601360932e-07,	5.57559831745896e-07],
#[2.16609635708949e-07,	1.32605224793125e-08,	8.46313090637363e-08,	74.9999991426562,	24.1793582779952,	69.9999992448406,	-10.0963163664299],
#[1.98768735407759e-07,	2.52713950236106e-08,	1.18634801532926e-07,	2.10186925491723e-07,	71.7187490133088,	1.30790487758703e-07,	4.52436989471943e-07],
#[1.45269703219246e-18,	1.04372737316824e-20,	4.00292753200760e-19,	1.18147461382663e-18,	8.10489904144168e-19,	6.98494805566840e-19,	-4.34208074526583e-19]]

#for i in range(7):
#    for j in range(7):
#        if transit[i][j] < 0:
#            transit[j][i] = transit[j][i] - transit[i][j]
#            transit[i][j] = 0
            
#print(transit)

f = open("data/position_disney.csv", 'w')
writer = csv.writer(f)


tranmatrix_file = np.loadtxt('data/tranmatrix_20220601.txt')
len_tmp = int(tranmatrix_file.shape[0] / 7)
print(len_tmp)
transit_array_tmp = tranmatrix_file.reshape((len_tmp,7,7))
print(transit_array_tmp)


transit_array = []
for i in transit_array_tmp:
    transit = i.T
#    for i in range(7):
#        for j in range(7):
#            if transit[i][j] < 0:
#                transit[j][i] = transit[j][i] - transit[i][j]
#                transit[i][j] = 0
    transit_array.append(transit)



######

UE_list = []


wait_time = [15, 15, 20, 50, 160, 65, 0];
total_num = 256#13309

total_tmp = 0
for i in range(7):
    for j in range(7):
        total_tmp = total_tmp + transit_array[0][i][j]*wait_time[i];

num_UE = 0
for i in range(7):
    for j in range(7):
        for k in range(int(transit_array[0][i][j]*wait_time[i]*(total_num/ total_tmp))):
            print("ueid:"+str(num_UE)+"s:"+str(i)+"j:"+str(j))
            num_UE = num_UE + 1
            ue = UE_mobility(i, j, x_axis, y_axis, speed)
            UE_list.append(ue)
#print("lenUE:"+str(len(UE_list)))

position_list = []
for ue in UE_list:
    position_list.append(ue.x_hist[-1])
    position_list.append(ue.y_hist[-1])
#print("len:"+str(len(position_list)))
writer.writerows([position_list])           

            

for epoch in range(1000):

    print("epoch turn:"+str(epoch//30))

    if epoch % 30 == 0:
        transit = transit_array[epoch//30]
        
    print("transit:"+str(transit))

    for ue_env, ue in enumerate(UE_list):
        #print("uemove:"+str(ue_env))
        ue.move()
    
    position_list = []
    for ue in UE_list:
        position_list.append(ue.x_hist[-1])
        position_list.append(ue.y_hist[-1])
    #print("len:"+str(len(position_list)))
    writer.writerows([position_list])           
        
    for ue_env, ue in enumerate(UE_list):
        print("ue_dist:"+str(ue_env))
        if (at_dist(ue.x_current, ue.y_current, x_axis, y_axis, ue.dist_id)):
            ue.set_distination(select_distination(ue.dist_id, transit))




    
