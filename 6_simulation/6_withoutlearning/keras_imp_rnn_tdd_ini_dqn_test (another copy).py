import tensorflow as tf
import numpy as np
#import matplotlib.pyplot as plt
#import pandas as pd
#from tensorflow.keras.preprocessing.sequence import pad_sequences
from tensorforce.agents import DoubleDQN
from tensorforce import Agent, Environment
from tensorflow.keras.layers import RNN, SimpleRNN, SimpleRNNCell
#from pprint import pprint
import sys



class CustomEnvironment(Environment):
 
    def __init__(self, obs_len, act_len):
        super().__init__()
        self.obs_len = obs_len
        self.act_len = act_len
 
    def states(self):
        print("E:states")
        return dict(type='float', shape=(self.obs_len,))
 
    def actions(self):
        print("E:actions")
        return dict(type='int', num_values=self.act_len)
 
    # Optional, should only be defined if environment has a natural maximum
    # episode length
    def max_episode_timesteps(self):
        return super().max_episode_timesteps()
 
    # Optional
    def close(self):
        print("E:close")
        super().close()
 
    def reset(self):
        state = np.random.random(size=(self.obs_len,))
        print("E:reset")
        return state
 
    #def execute(self, actions):
    #    print("execute actions:"+str(actions))
    #    #assert 0 <= actions.item() <= 3
    #    next_state = np.random.random(size=(self.obs_len,))
    #    terminal = np.random.random() < 0.5
    #    reward = np.random.random()
    #    print("execute")
    #    return next_state, terminal, reward



def tdd_ini(args1):

    #X = np.random.rand(4,40,16)
    #X = np.random.rand(16)
    X = np.zeros(16*40)
    print(X)
    observation = np.zeros(16*40)


    #y = np.random.randint(0,2,(4,16)) * 2 - 1
    #y = np.random.randint(0,2,(4,16)) * 2 - 1
    y = np.random.randint(0,2,16) * 2 - 1
    print(y)


    #train_ds = tf.data.Dataset.from_tensor_slices((X, y, X_len)).shuffle(buffer_size=4).batch(batch_size=2)

    #train_ds = tf.data.Dataset.from_tensor_slices((X, y)).shuffle(buffer_size=16*40).batch(batch_size=1)
    #train_ds = tf.data.Dataset.from_tensor_slices((X, y)).shuffle(buffer_size=5).batch(batch_size=3)

    #print("train_ds")
    #print(train_ds)


    env = Environment.create(
        environment=CustomEnvironment, max_episode_timesteps=40,
        obs_len=16, act_len=16
    )

    print("env")

#    network_spec = [dict(type='dense', size=64, activation='leaky-relu'),
#                    dict(type='dense', size=128, activation='tanh'),
#                    dict(type='dense', size=64, activation='leaky-relu')]
#    memory = 1024; batch_size = 256; lr = 5e-4; freq = 64
#    network_spec = [dict(type='dense', size=16, activation='leaky-relu'),
#    network_spec = [dict(type='rnn', cell='gru', size=16, horizon=1),
#                    dict(type='dense', size=16, activation='leaky-relu')] #tanh for DTDD
#    network_spec = [dict(type='rnn', cell='gru', size=16, horizon=1, activation='leaky-relu')]
#    network_spec = [dict(type='dense', size=16, activation='leaky-relu')] #tanh for DTDD
    network_spec = [dict(type='dense', size=16*40, activation='leaky-relu'),
                    dict(type='dense', size=8*40, activation='tanh'),
                    dict(type='dense', size=4*40, activation='leaky-relu')]
#    network_spec = [dict(type='dense', size=16, activation='leaky-relu'),
#                    dict(type='rnn', cell='gru', size=16, horizon=16, activation='tanh'),
#                    dict(type='dense', size=16, activation='leaky-relu')]
    memory = 1024; batch_size = 256; lr = 0.01; freq = 10 #lr =5e-4
    print("before agent")
    print(env.states())
    print(env.actions())
    agent = Agent.create(
        agent='double_dqn',
        states={'type':'float', 'shape':(16*40,)},#env.states(),
        actions={'type':'int', 'num_values':2, 'shape':(16,)},#{'type':'int', 'num_values':16},#env.actions(),
        memory=memory,
        batch_size=batch_size,
        exploration=0.05,#0.05,0.9
        # learning_rate=dict(type='exponential', unit='episodes', num_steps=50, initial_value=lr, decay_rate=0.8),
        learning_rate=lr,
        # discount=1.,
        discount=0.95,
        update_frequency=freq,
        network=network_spec,
        config={'seed': 0}
    )

    print("agent")
    #model.summary()

    #observation = env.reset()
    
    print(observation)

    #print("env.reset()")

    for j in range(1000):
        print("obs:"+str(observation))
        actions = agent.act(states=observation)
        print("act:"+str(actions))
        reward = 0
        #for i in actions:
        #    if i == 1:
        #        reward = reward + 1

        if (int((j/300) % 2) ==0):
            print("all1")
            for i in actions:
                if i == 1:
                    reward = reward + 1
        else:
            print("all0")
            for i in actions:
                if i == 0:
                    reward = reward + 1

        print("reward:"+str(reward))
        agent.observe(terminal=False, reward=reward)
    
    
    return(agent)


tdd_ini(0)
