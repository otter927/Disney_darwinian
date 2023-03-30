import tensorflow as tf
import numpy as np
#import matplotlib.pyplot as plt
#import pandas as pd
#from tensorflow.keras.preprocessing.sequence import pad_sequences
from tensorforce.agents import DoubleDQN
from tensorforce import Agent, Environment
#from pprint import pprint
import sys

args = sys.argv

def loss_fn(model, x, y):
    #print(y);
    #print(model(x));
    sequence_loss = tf.keras.losses.mean_squared_error(
#    sequence_loss = tf.keras.losses.binary_crossentropy(
        y_true=y, y_pred=model(x)
    )
    return sequence_loss



def tdd_learn(args1, agent):

    #agent = Agent.load("sample"+str(args1))



    text_input = np.loadtxt("learning_input.txt");
    print("text_input.shape")
    print(text_input.shape)
    #learning_input = text_input.reshape(100,4,16);
    #learning_input = text_input.reshape(100,40,16);
    if (len(text_input.shape)>1):
        learning_input_tmp = text_input.reshape(text_input.shape[0],40,16);
        #learning_input = learning_input_tmp[-1, -1, :];
        learning_input = learning_input_tmp[-1, :, :];
    else:
        learning_input_tmp = text_input.reshape(40,16);
        #learning_input = learning_input_tmp[-1, :];    
        learning_input = learning_input_tmp;    
    print("learning_input")
    print(learning_input.shape)
    X = learning_input.tolist();

    learning_reward_tmp = np.loadtxt("learning_reward.txt")
    #print(learning_reward_tmp)
    #print(learning_reward_tmp.shape)
    #print(len(learning_reward_tmp.shape))
    if (len(learning_reward_tmp.shape)>0):
        learning_reward = learning_reward_tmp[-1]
    else:
        learning_reward = learning_reward_tmp


    #actions = agent.act(states=X)

    agent.observe(terminal=False, reward=learning_reward)
    
    #agent.save("sample"+str(args1))

    #y_pred_pos = list(map(lambda row: [idx2pos.get(elm) for elm in row], y_pred.astype(np.int32).tolist()))




#tdd_learn(0)


