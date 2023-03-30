from hetnet import HetNet

import sys
import random
import math

import random
import numpy as np

import csv

def calc_d(s, d): 
    ans = math.sqrt(math.pow(s[0] - d[0], 2) + math.pow(s[1] - d[1], 2))
    return(ans)

def if_inside_triangle(px, py, p0x, p0y, p1x, p1y, p2x, p2y):

    Area = 0.5 *(-p1y*p2x + p0y*(-p1x + p2x) + p0x*(p1y - p2y) + p1x*p2y);
    s = 1/(2*Area)*(p0y*p2x - p0x*p2y + (p2y - p0y)*px + (p0x - p2x)*py);
    t = 1/(2*Area)*(p0x*p1y - p0y*p1x + (p0y - p1y)*px + (p1x - p0x)*py);
 
    if((0 < s < 1) and (0 < t < 1) and (0<1-s-t<1)):
        return True #Inside Triangle
    else:
        return False
    

def find_xy_inside_triangel(p0x, p0y, p1x, p1y, p2x, p2y):

    max_x = max([p0x, p1x, p2x])
    min_x = min([p0x, p1x, p2x])

    max_y = max([p0y, p1y, p2y])
    min_y = min([p0y, p1y, p2y])

    answer = False

    while answer == False:
    
        x_random = random.random()
        y_random = random.random()
    
        px = min_x + (max_x - min_x) * x_random
        py = min_y + (max_y - min_y) * y_random
    
        answer = if_inside_triangle(px, py, p0x, p0y, p1x, p1y, p2x, p2y)

    return([px, py])
    

def check_distance(pos, mbs_pos, sbs_pos):
    for i in mbs_pos:
        if calc_d(i, pos) < 75:
            return(False)
    for i in sbs_pos:
        if calc_d(i, pos) < 40:
            return(False)
    return(True)
        
def check_grid(pos, x_grid, y_grid, x_lim_r, y_lim_r, x_lim_l, y_lim_l, sbs_radius):
    near_grid = False
    if pos[0] < x_lim_l - sbs_radius/2 :
        return(False)
    if pos[0] > x_lim_r + sbs_radius/2 :
        return(False)
    if pos[1] < y_lim_l - sbs_radius/2 :
        return(False)
    if pos[1] > y_lim_r + sbs_radius/2 :
        return(False)
    
    for i in range(x_lim_l, x_lim_r+x_grid, x_grid):
        print("pos2:"+str(pos[0])+", i:"+str(i))
        if pos[0] == i:
            return(False)
        print("pos3:"+str(abs(pos[0] - i))+", "+str(sbs_radius/2))
        if abs(pos[0] - i) < (sbs_radius/2):
            near_grid = True
            print("pos4:"+str(near_grid))
    for i in range(y_lim_l, y_lim_r+y_grid, y_grid):
        if pos[1] == i:
            return(False)
        if abs(pos[1] - i) < (sbs_radius/2):
            near_grid = True
            
    return(near_grid)

def find_xy1(x, y, mbs_pos, sbs_pos, x_grid, y_grid, x_lim_r, y_lim_r, x_lim_l, y_lim_l, sbs_radius):

    p0x = x - 216.5
    p0y = y - 125
    p1x = x
    p1y = y
    p2x = x + 216.5
    p2y = y - 125
    
    answer = find_xy_inside_triangel(p0x, p0y, p1x, p1y, p2x, p2y)
    while (check_distance(answer, mbs_pos, sbs_pos) == False) or (check_grid(answer, x_grid, y_grid, x_lim_r, y_lim_r, x_lim_l, y_lim_l, sbs_radius) == False):
        answer = find_xy_inside_triangel(p0x, p0y, p1x, p1y, p2x, p2y)
    
    return(answer)

def find_xy2(x, y, mbs_pos, sbs_pos, x_grid, y_grid, x_lim_r, y_lim_r, x_lim_l, y_lim_l, sbs_radius):

    p0x = x - 216.5
    p0y = y - 125
    p1x = x
    p1y = y
    p2x = x
    p2y = y + 250
    
    answer = find_xy_inside_triangel(p0x, p0y, p1x, p1y, p2x, p2y)
    while (check_distance(answer, mbs_pos, sbs_pos) == False) or (check_grid(answer, x_grid, y_grid, x_lim_r, y_lim_r, x_lim_l, y_lim_l, sbs_radius) == False):
        answer = find_xy_inside_triangel(p0x, p0y, p1x, p1y, p2x, p2y)

    return(answer)

def find_xy3(x, y, mbs_pos, sbs_pos, x_grid, y_grid, x_lim_r, y_lim_r, x_lim_l, y_lim_l, sbs_radius):

    p0x = x + 216.5
    p0y = y - 125
    p1x = x 
    p1y = y
    p2x = x
    p2y = y +250
    
    answer = find_xy_inside_triangel(p0x, p0y, p1x, p1y, p2x, p2y)
    while (check_distance(answer, mbs_pos, sbs_pos) == False) or (check_grid(answer, x_grid, y_grid, x_lim_r, y_lim_r, x_lim_l, y_lim_l, sbs_radius) == False):
        answer = find_xy_inside_triangel(p0x, p0y, p1x, p1y, p2x, p2y)

    return(answer)
    
def if_inside_cercle(px, py, p0x, p0y, radius):

    a = px - p0x;
    b = py - p0y;
    c = math.sqrt(a * a + b * b);

    if (c <= radius/2):
        return True
    else:
        return False

def find_xy_c(p0x, p0y, radius):

    
    max_x = p0x + radius/2
    min_x = p0x - radius/2

    max_y = p0y + radius/2
    min_y = p0y - radius/2

    answer = False
    
    while answer == False:
    
        x_random = random.random()
        y_random = random.random()
    
        px = min_x + (max_x - min_x) * x_random
        py = min_y + (max_y - min_y) * y_random
    
        answer = if_inside_cercle(px, py, p0x, p0y, radius)
        answer2 = minimum_distance(px, py, p0x, p0y, radius)

        answer = answer and answer2
    
    return([px, py])

def find_xy_c_mobility(x_grid, y_grid, x_lim_l, y_lim_l, x_lim_r, y_lim_r):

    px = random.randrange(x_lim_l, x_lim_r+x_grid, x_grid)
    py = random.randrange(y_lim_l, y_lim_r+y_grid, y_grid)

    return([px, py])

def minimum_distance(px, py, p0x, p0y, radius):
    if radius == 500:
        if calc_d([px, py], [p0x, p0y]) > 35:
            return(True)
        else:
            return(False)
    else:
        if calc_d([px, py], [p0x, p0y]) > 10:
            return(True)
        else:
            return(False)


def user_position(x1, y1, x2, y2, a):
    dis = sqrt(pow((x1 - x2), 2) + pow((y1 - y2), 2))
    ratio = a/dis*1.0
    new_x = x1 + (x1 - x2) * ratio
    new_y = y1 + (y1 - y2) * ratio
    return(new_x, new_y)



def dis(x1, y1, x2, y2):
    dis = math.sqrt(pow((x1 - x2), 2) + pow((y1 - y2), 2))
    return(dis)
    

def find_sbs(x, y, bs_x_axis, bs_y_axis):
    bs_dis = np.zeros(len(bs_x_axis))
    min_dis = 10000
    min_bs = 0
    for i in range(len(bs_x_axis)):
        print("x"+str(type(x)))
        print("bs"+str(type(bs_x_axis[i])))
        bs_dis[i] = dis(x, y, bs_x_axis[i], bs_y_axis[i])
        if bs_dis[i] < min_dis:
            min_dis = bs_dis[i]
            min_bs = i
    return(min_bs, min_bs)

#mode = "conv"
#mode = "schD"
mode = "DRL"

sim = HetNet.Simulator(mode)

args = sys.argv

#position_file = "data/position_disney.csv"


#if position_file is not None:
#   f = open(position_file)
#   reader = csv.reader(f)
#   l = [row for row in reader]
##   print(l)
#   position_list = [[float(v) for v in row] for row in l]



position_file = "data/position_disney.csv"
l_max = 0
position_list = []
if position_file is not None:
   f = open(position_file)
   reader = csv.reader(f)
   l_max = 0
   for row in reader:
       if len(row) > l_max:
           l_max = len(row)
   #print("l_max:"+str(l_max))

   f2 = open(position_file)
   reader2 = csv.reader(f2, quoting=csv.QUOTE_NONNUMERIC)
   for row in reader2:
       data_tmp = []
       data_tmp.append(row)
       print("type:"+str(type(data_tmp[0][0])))
       #print("len(data_tmp row):"+str(len(row)))
       #print("len(data_tmp):"+str(len(data_tmp[0])))
       while (len(data_tmp[0]) < l_max):
           data_tmp[0].extend([4270.1503, -40728.6466])
       #print("len(data_tmp)2:"+str(len(data_tmp[0])))
       position_list.append(data_tmp[0])



# Get the environment and extract the number of actions.



inter_site_distance = 500
small_cell_coverage = 40

system_bandwidth = 10

mbs_antenna = 4
sbs_antenna = 4
UE_antenna = 2

mbs_radius = 500
sbs_radius = 40

mbs_id = 0
sbs_id = 0
ue_id = 0

cell_id = 0

#print("C")

sbs_pos = []

cell_color = 0
cell_id = 0


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

#cover range kakunin whole disney can covered by MBS, so for each attraction, SBS should be placed
#user kiseki kaku
#SBS wo attraction ni
#totyuumo SBS


#mode = "MVG"
mode = "FG"

sim.set_learning_mode(mode)

bs_list = []
for i in range(7):
    cell_color = i
    cell_id = i
    bs_id = i
    sbs = sim.add_bs("SBS", bs_id, cell_color, x_axis[i], y_axis[i], cell_id)
    bs_list.append(sbs)

i = 7
cell_color = i
cell_id = i
bs_id = i
mbs = sim.add_bs("MBS", bs_id, cell_color, x_axis[i], y_axis[i], cell_id)
bs_list.append(mbs)

print("len(position_list)"+str(len(position_list[0])))
for i in range(int(len(position_list[0])/2)):
    ue_id = i
    x_ue = position_list[0][i*2]
    y_ue = position_list[0][i*2+1]
    print("x_ue"+str(x_ue))
    t_sbs, t_cell_color = find_sbs(x_ue, y_ue, x_axis, y_axis)
    sim.add_ue("Ped", ue_id, t_cell_color, x_ue, y_ue, bs_list[t_sbs]) #no meaning ped,veh

   

sim.execute_sim_darwinian_greedy(position_list)



#for i in range(10000):
for i in range(268):

    print("i:"+str(i), flush=True)
    sim.execute_sim_darwinian_greedy(position_list)


#    if (i != 0) and (i % 1000 == 0):
    ans1_1, ans1_2, ans1_3, ans2_1, ans2_2, ans2_3, ans3_1, ans3_2, ans3_3, ans4_1, ans4_2, ans4_3, ans5_1, ans5_2, ans5_3, ans6_1, ans6_2, ans6_3 = sim.sum_UE_throughput()
    print("median ul throughput:"+str(ans1_1)+", "+str(ans1_2)+", "+str(ans1_3)+", dl throughput:"+str(ans2_1)+", "+str(ans2_2)+", "+str(ans2_3)+", "+"median ul mbs throughput:"+str(ans3_1)+", "+str(ans3_2)+", "+str(ans3_3)+", dl mbsthroughput:"+str(ans4_1)+", "+str(ans4_2)+", "+str(ans4_3)+", " +"median ul sbs throughput:"+str(ans5_1)+", "+str(ans5_2)+", "+str(ans5_3)+", dl sbs throughput:"+str(ans6_1)+", "+str(ans6_2)+", "+str(ans6_3))
    sim.print_buffer_num()


sim.print_interf("log_Disney")

#print("F")



