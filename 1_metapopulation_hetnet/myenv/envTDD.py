import sys

import gym
import numpy as np
import gym.spaces

import math
import random

import threading

from hetnet import HetNet

class MyEnvTDD(gym.Env):

    MAX_STEPS = 100000
    #MAX_STEPS = 4000
    #MAX_STEPS = 1999
    #MAX_STEPS = 999
    #MAX_STEPS = 10

    MAX_CAPACITY = 50000
    
    MAX_RATE = 100

    def __init__(self, sim, bs, observation_len, s_seed):
        super().__init__()
        #random.seed(0)

        self.sim = sim

        self.bs = bs
        
        self.observation_len = observation_len

        print(str(self.bs.get_name()) + ": init")

        observation_space_tmp = []
        for i in range(observation_len):
            observation_space_tmp.append(self.MAX_RATE)
        # action_space, observation_space, reward_range を設定する
        #self.action_space = gym.spaces.Discrete(self.NUM_RRH * 2)   # ON/ OF
        self.action_space = gym.spaces.Discrete(7)   # ON/ OF
        #self.observation_space = gym.spaces.MultiDiscrete(observation_space_tmp) # M1, ..., MR, D1, ...., DR
        self.observation_space = gym.spaces.Box(-self.MAX_CAPACITY, self.MAX_CAPACITY, shape=(self.observation_len,), dtype=np.float32)
        self.reward_range = [0.0, self.MAX_CAPACITY]

        print(str(self.bs.get_name()) + ": self.action_space"+str(self.action_space))
        print(str(self.bs.get_name()) + ": self.observation_space"+str(self.observation_space))

        random.seed(s_seed)
        np.random.seed(seed=s_seed)

        print(str(self.bs.get_name()) + ": get_ue_num")
        print(str(self.bs.get_name()) + ": " + str(self.sim.get_ue_num()))

        #random.seed(0)
        self.observation = np.ones(self.observation_len, dtype=int)


        self.reset()


    def reset(self):
        print(str(self.bs.get_name()) + ": reset")

        self.steps = 0        

        return self.observe()

    def step(self, action):
        print(str(self.bs.get_name()) + ": step")

        print(str(self.bs.get_name()) + ": step, steps: "+str(self.steps)+ ", "+str(self.steps))
        print(str(self.bs.get_name()) + ": step, action: "+str(self.steps)+ ", "+str(action))
 
        self.output = action % 7

        print(str(self.bs.get_name()) + ": step, self.output: "+str(self.steps)+ ", "+str(self.output))

        #0 stay, 1 on, 2 off
        
        #action
        self.bs.set_config_id(self.output)
        
        #observation
        observation = self.observe()
        reward = self.get_reward()

        print(str(self.bs.get_name()) + ": step, observation, reward: "+str(self.steps)+", "+str(self.observation)+", "+str(reward))
        


        self.steps = self.steps + 1
        self.done = self.is_done()


        return observation, reward, self.done, {}

    def render(self, mode='human', close=False):

        pass

    def close(self):
        pass

    def seed(self, seed=None):
        pass

    def get_reward(self):

        ul_dl_all = []
        for i in self.bs.get_connecting_UE():
            ul_t, dl_t = i.get_UE_throughput()
            ul_dl_all.append(ul_t)
            ul_dl_all.append(dl_t)
        
        reward = np.mean(ul_dl_all)
        
        return reward
        

    def observe(self):
        print(str(self.bs.get_name()) + ": observe")
        
        #print("execution")
        #self.sim.execute()
        

        observation = self.bs.get_observation()
        print(str(self.bs.get_name()) + ": observation:" + str(observation))

        return observation


    def is_done(self):
        print(str(self.bs.get_name()) + ": done")

        if self.steps > self.MAX_STEPS:
            print(str(self.bs.get_name()) + ": END")
            random.seed(0)
            return True
        else:
            return False


