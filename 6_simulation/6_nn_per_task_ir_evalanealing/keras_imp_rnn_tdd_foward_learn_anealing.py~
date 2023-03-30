import tensorflow as tf
import numpy as np
#import matplotlib.pyplot as plt
#import pandas as pd
#from tensorflow.keras.preprocessing.sequence import pad_sequences
#from tensorflow.keras.models import Sequential
#from tensorflow.keras.layers import Embedding, TimeDistributed, Dense, SimpleRNN, Activation
#from pprint import pprint
from tensorforce.agents import DoubleDQN
from tensorforce import Agent
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



def tdd_foward_learn_anealing(nn):



    actions = [nn]


    with open("log_actions.txt", "a") as f_handle_act:
        np.savetxt(f_handle_act, [actions]);
    
    #b = np.loadtxt("foward_output"+str(args1)+".txt")
    #print(b)



    learning_reward_tmp = np.loadtxt("learning_reward.txt")
    print(learning_reward_tmp)
    #print(learning_reward_tmp.shape)
    #print(len(learning_reward_tmp.shape))
    if (len(learning_reward_tmp.shape)>1):
        learning_reward = learning_reward_tmp[-1, actions[0]+1]
    else:
        learning_reward = learning_reward_tmp[actions[0]+1]
    print(learning_reward)
    




    learning_reward_output = np.loadtxt("learning_reward_output_tmp.txt")
    print(learning_reward_output)
    if (len(learning_reward_output.shape)>1):
        learning_output = learning_reward_output[-1, actions[0]*16:actions[0]*16+16]
    else:
        learning_output = learning_reward_output[actions[0]*16:actions[0]*16+16]
    print(learning_output)

    with open("learning_output_dqn.txt", "a") as f_handle:
        np.savetxt(f_handle, [learning_output]);

    
    return(learning_reward)
    
    #agent.save("sample"+str(args1))

    #y_pred_pos = list(map(lambda row: [idx2pos.get(elm) for elm in row], y_pred.astype(np.int32).tolist()))


#tdd_foward(0)
