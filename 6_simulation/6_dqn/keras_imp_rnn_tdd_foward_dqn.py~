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

def tdd_foward(args1, agent):

    #agent = Agent.load("sample"+str(args1))

    text = np.loadtxt("foward_input.txt");
    #print(text.shape)

    #newtext = text.reshape(100,4,16);
    newtext = text.reshape(1,40,16);
    #print(newtext.shape)

    #newtext = newtext[-1,-1,:]

    #print("newtext")
    #print(newtext)
    
    X = newtext.ravel();
    #print(X);

    print("foward:X")
    print(X)

    actions = agent.act(states=X)
    actions = [actions]

    print("foward:actions")
    print(actions)
    #print(y_pred)

    np.savetxt("foward_output"+str(args1)+".txt", actions);
    
    #b = np.loadtxt("foward_output"+str(args1)+".txt")
    #print(b)

#tdd_foward(0)
