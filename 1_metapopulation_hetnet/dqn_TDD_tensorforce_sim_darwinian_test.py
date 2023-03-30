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

mbs = sim.add_bs("MBS", 0, 0, 1000, 500, 0)
sbs = sim.add_bs("SBS", 1, 0, 1000, 500, 1)

sim.add_ue("Ped", 0, 0, 1000, 490, mbs) #no meaning ped,veh
sim.add_ue("Ped", 1, 0, 1000, 2510, sbs) #no meaning ped,veh


sim.execute_sim_darwinian()

sim.execute_sim_darwinian()


