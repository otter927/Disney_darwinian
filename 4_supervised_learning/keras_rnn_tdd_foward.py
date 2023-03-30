import tensorflow as tf
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from tensorflow.keras.preprocessing.sequence import pad_sequences
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Embedding, TimeDistributed, Dense, SimpleRNN, Activation
from pprint import pprint
import sys

args = sys.argv

model = tf.keras.models.load_model("keras_rnn_tdd"+str(args[1]));


text = np.loadtxt("foward_input.txt");
#print(text.shape)

#newtext = text.reshape(100,4,16);
newtext = text.reshape(100,40,16);
#print(newtext.shape)


X = newtext.tolist();
#print(X);

y_pred = model.predict(X)

#print(y_pred)

np.savetxt("foward_output"+str(args[1])+".txt", y_pred);

