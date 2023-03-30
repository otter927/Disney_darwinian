
import sys
import random
import math

import random
import csv
import numpy as np
import pandas as pd

def gen_x_axis(cid, x_axis):
    r = random.gauss(0,0.5)
#    ans = x_axis[cid] + r * 100
    ans = x_axis[cid] + r * 40/2
#    ans = x_axis[cid] + r * 100
    return(ans)    

def gen_y_axis(cid, y_axis):
    r = random.gauss(0,0.5)
#    ans = y_axis[cid] + r * 100
    ans = y_axis[cid] + r * 40/2
#    ans = y_axis[cid] + r * 100
    return(ans)    


y_axis = np.zeros(9)
x_axis = np.zeros(9)

#アドベンチャーランド
y_axis[0] = -40576.0916
x_axis[0] = 4292.7195
#ウェスタンランド
y_axis[1] = -40645.3577
x_axis[1] = 4439.9288
#クリッターカントリー
y_axis[2] = -40811.6655
x_axis[2] = 4643.7977
#ファンタジーランド
y_axis[3] = -40895.0254
x_axis[3] = 4338.1594
#トゥーンタウン
y_axis[4] = -41033.8040
x_axis[4] = 4123.1142
#トゥモローランド
y_axis[5] = -40784.2280
x_axis[5] = 4032.4274
#メインエントランス, ワールドバザール
y_axis[6] = -40479.0878
x_axis[6] = 4145.4995
#東京ディズニーランド, 広場
y_axis[7] = -40728.6466
x_axis[7] = 4270.1503
#not_entered_yet
y_axis[8] = 0.0
x_axis[8] = 0.0



f = open("data/position_disney.csv", 'w')
writer = csv.writer(f)




uenum_array = np.loadtxt('data/uenum_20220914.txt')
#uenum_array = np.loadtxt('data/uenum_20220610_Fri.txt')
#uenum_array = np.loadtxt('data/uenum_20220914_repeat2.txt')
uenum_array = np.round(uenum_array * 0.01)
print(uenum_array)
max_sum = 0
for i in uenum_array:
    tmp_sum = 0
    for j in i:
        tmp_sum = tmp_sum + j
    #print(tmp_sum)
    if tmp_sum > max_sum:
        max_sum = tmp_sum



for epoch in range(5040):
#for epoch in range(720):

#for epoch in range(1000):

    if epoch % 30 == 0:
        position_list = []
        for env_i, i in enumerate(uenum_array[epoch // 30]):
            print(env_i)
            print(i)
            for j in range(int(i)):
                position_list.append(gen_x_axis(env_i, x_axis))
                position_list.append(gen_y_axis(env_i, y_axis))
        print(max_sum - np.sum(uenum_array[epoch // 30]))
        for i in range(int(max_sum - np.sum(uenum_array[epoch // 30]))):
            position_list.append(0.0)
            position_list.append(0.0)
                
    writer.writerows([position_list])
    
    

    
