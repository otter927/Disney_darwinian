# -*- coding: utf-8 -*-

import sys

import numpy as np

import math
import random

import networkx as nx

import copy


import itertools

import statistics

from tensorforce.agents import DoubleDQN
from tensorforce import Agent, Environment

import gym
from gym import wrappers
import myenv

import sys

from math import log10, floor

import time

#from hetnet import darwinian_rapper as dw
from hetnet import darwinian_rbm_rapper as dw

p1 = dw.PyDeme()
p2 = dw.PyDeme()

t=0
p1.py_evolution_initialization(t)
        
p1.py_evolution_gen_environment(t)

p2.py_evolution_gen_environment(t)

#deme_list = dw.py_evolution_gen_update(t)	
#w = np.empty(0, dtype=np.float32)
#for o_env, output in enumerate(deme_list):
#    w = np.append(w, np.float32(o_env))
#dw.py_return_fitness(w, 0)    
#
###dw.py_evolution_gen_calcfitness(t) #
#best_output = dw.py_evolution_gen_calcbestfitness(t)

#for t in range(1, 2):
#
#    dw.py_evolution_gen_environment(t)
#    deme_list = dw.py_evolution_gen_update(t)	
#
#    deme_list = dw.py_evolution_gen_update(t)	
#    w = np.empty(0, dtype=np.float32)
#    for o_env, output in enumerate(deme_list):
#        w = np.append(w, np.float32(o_env))
#    dw.py_return_fitness(w, 0)    
#
#    ##dw.py_evolution_gen_calcfitness(t) #
#    best_output = dw.py_evolution_gen_calcbestfitness(t)
#    print(best_output)
#
#    deme_list = dw.py_evolution_gen_selection(t)
#    print("Here")
#    print(deme_list)
#    w = np.empty(0, dtype=np.float32)
#    w = np.append(w, np.float32(1))
#    w = np.append(w, np.float32(2))
#    dw.py_return_mutate_fitness(w, 0)   
#
#    ##dw.py_evolution_gen_calcmutation(t) #
#    dw.py_evolution_gen_replacemutation(t)

       


