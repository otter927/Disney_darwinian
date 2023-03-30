from hetnet import HetNet

import sys
import random
import math

import random
import csv
import numpy as np
import pandas as pd


class UE_mobility():

    def __init__(self, x, y, x_d, y_d, c_flag, speed):

        self.x_axis = x
        self.y_axis = y
        self.x_source = x
        self.y_source = y
        self.x_dist = x_d
        self.y_dist = y_d
        self.speed = speed
        self.move_d = 0
        self.c_flag = c_flag

        self.u_state = 0

        self.x_hist = [self.x_axis]
        self.y_hist = [self.y_axis]
        
        self.y_center = -40728.6466
        self.x_center = 4270.1503
        
        self.to_center = dis(self.x_axis, self.y_axis, self.x_center, self.y_center)


    def get_xy(self):
        return((self.x_axis, self.y_axis))


    def move(self):
        self.move_d = self.move_d + self.speed #moved ruiseki
        beyond_c_flag = 0

        if self.to_center < self.move_d:
            beyond_c_flag = 1
            self.move_d_cut = self.move_d - self.to_center


        if self.c_flag == 0:
            x, y = self.user_position(self.x_source, self.y_source, self.x_dist, self.y_dist, self.move_d)
        elif (self.c_flag == 1) and (beyond_c_flag == 0):
            x, y = self.user_position(self.x_source, self.y_source, self.x_center, self.y_center, self.move_d)
        else:
            x, y = self.user_position(self.x_center, self.y_center, self.x_dist, self.y_dist, self.move_d_cut)
               

        if x != None:
            self.x_axis = x
            self.y_axis = y
        self.x_hist.append(self.x_axis)    
        self.y_hist.append(self.y_axis)    
        
    def remain(self):
    
        self.x_hist.append(self.x_axis)    
        self.y_hist.append(self.y_axis)    



    def user_position(self, x1, y1, x2, y2, move_d):
        dis = math.sqrt(pow((x1 - x2), 2) + pow((y1 - y2), 2))
        if move_d <= dis:
            ratio = move_d/dis*1.0
            new_x = x1 + (x2 - x1) * ratio
            new_y = y1 + (y2 - y1) * ratio
            return(new_x, new_y)
        else:
            return(x2, y2)

def dis(x1, y1, x2, y2):
    dis = math.sqrt(pow((x1 - x2), 2) + pow((y1 - y2), 2))
    return(dis)


y_axis = np.zeros((8,1))
x_axis = np.zeros((8,1))

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

speed = 40 #ippann 80 dakedo, te-mapa-kudakara


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


tranmatrix_file = np.loadtxt('data/tranmatrix_20220505.txt')
transit_array_tmp = tranmatrix_file.reshape((9,7,7))
print(transit_array_tmp)



transit_array = []
for i in transit_array_tmp:
    transit = i.T
    transit_array.append(transit)
    
    for i in range(7):
        for j in range(7):
            if transit[i][j] < 0:
                transit[j][i] = transit[j][i] - transit[i][j]
                transit[i][j] = 0

    user_x = []
    for i in range(7):
        user_x_tmp = []
        for j in range(7):
            user_x_tmp.append([])
        user_x.append(user_x_tmp)



    for i in range(7):
        for j in range(7):
            for k in range(int(transit[i][j])):
                if (j == i) or (j == (i-1) % 7) or (j == (i+1) % 7):
                    ue = UE_mobility(x_axis[i], y_axis[i], x_axis[j], y_axis[j], 0, speed)
                else:
                    ue = UE_mobility(x_axis[i], y_axis[i], x_axis[j], y_axis[j], 1, speed)            
                user_x[i][j].append(ue)

    #print("A")
    #for i in range(7):
    #    for j in range(7):
    #        print(len(user_x[i][j]), end=',')
    #    print("")

    distance = np.zeros((7,7))
    for i in range(7):
        for j in range(7):
            if (j == i):
                #print("A"+str(i)+", "+str(j))
                distance[i][j] = 0
            elif (j == (i-1) % 7) or (j == (i+1) % 7):
                #print("B"+str(i)+", "+str(j))
                distance[i][j] = dis(x_axis[i], y_axis[i], x_axis[j], y_axis[j])
            else:
                #print("C"+str(i)+", "+str(j))
                distance[i][j] = dis(x_axis[i], y_axis[i], x_axis[7], y_axis[7]) + dis(x_axis[7], y_axis[7], x_axis[j], y_axis[j])

    #print(distance)
        

    d_time = np.zeros((7,7)) #syoyoujikann
    for i in range(7):
        for j in range(7):
            d_time[i][j] = distance[i][j]/speed

    print(d_time)

    m_rate = np.zeros((7,7))
    for i in range(7):
        for j in range(7):
            m_rate[i][j] = transit[i][j] / (int_time - math.ceil(d_time[i][j])) # person/min
        
    print(m_rate)

    for i in range(int_time):
        for k1 in range(7):
            for k2 in range(7):
                m_r = int(math.ceil(m_rate[k1][k2]))
                print(m_r, end=", ")
                count = m_r
                for l in user_x[k1][k2]:
                    if count != 0:
                        if l.u_state == 0:
                            l.u_state = 1
                            count = count -1
                for l in user_x[k1][k2]:
                    print(l.u_state, end=",")
                    if l.u_state == 1:
                        l.move()           
                    else:
                        l.remain()
                print("")
        print("A")     
            
    position = []
    for i in range(int_time):
        position_list = []
        for k1 in range(7):
            for k2 in range(7):
                for l in user_x[k1][k2]:
                    print("x_hist[i]:"+str(l.x_hist[i]))
                    position_list.extend(l.x_hist[i])
                    position_list.extend(l.y_hist[i])
        print("len:"+str(len(position_list)))
        position.append(position_list)
        

    writer.writerows(position)           


    
