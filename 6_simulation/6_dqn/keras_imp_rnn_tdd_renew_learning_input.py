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


def tdd_renew_learning_input():

    foward_input = np.loadtxt("foward_input.txt");
    print("foward_input.shape")
    print(foward_input.shape)
    foward_input_tmp = foward_input.reshape(180,16);
    print(foward_input_tmp.shape)

    foward_input_tmp = np.delete(foward_input_tmp, 0, 0)
    print(foward_input_tmp.shape)
    foward_input_tmp = np.ravel(foward_input_tmp)
    print(foward_input_tmp.shape)

    f = open("learning_input.txt", "a")
    for x in foward_input_tmp:
        f.write(str(x)+" ")
    f.close()


