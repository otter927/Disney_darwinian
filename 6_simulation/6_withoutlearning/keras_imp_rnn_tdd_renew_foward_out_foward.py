#import tensorflow as tf
import numpy as np
#import matplotlib.pyplot as plt
#import pandas as pd
#from tensorflow.keras.preprocessing.sequence import pad_sequences
#from tensorflow.keras.models import Sequential
#from tensorflow.keras.layers import Embedding, TimeDistributed, Dense, SimpleRNN, Activation
#from pprint import pprint
import sys

args = sys.argv

def tdd_renew_foward_out_foward():


    learning_input = np.loadtxt("learning_input.txt");
    print("learning_input.shape")
    print(learning_input.shape)
    print("learning_input.shape[1]")
    print(len(learning_input.shape))
    if (len(learning_input.shape)>1):
        learning_input_tmp = learning_input.reshape(learning_input.shape[0],180,16);
        learning_input_tmp = learning_input_tmp[-1]
    else:
        learning_input_tmp = learning_input.reshape(180,16);
    print(learning_input_tmp.shape)

    foward_input = np.loadtxt("foward_input.txt");
    print("foward_input.shape")
    print(foward_input.shape)
    foward_input_tmp = foward_input.reshape(180,16);
    print(foward_input_tmp.shape)

    print("foward_input_tmp.shape")
    foward_input_tmp = np.delete(foward_input_tmp, 0, 0)
    print(foward_input_tmp.shape)
    foward_input_tmp = np.ravel(foward_input_tmp)


    f = open("foward_input.txt", "w")
    for x in foward_input_tmp:
        f.write(str(x)+" ")
    f.close()
    

