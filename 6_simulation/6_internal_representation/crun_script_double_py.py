import os
import tensorflow as tf
import numpy as np
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Embedding, TimeDistributed, Dense, SimpleRNN, Activation
from keras_imp_rnn_tdd_ini import tdd_ini
from keras_imp_rnn_tdd_foward import tdd_foward
from keras_imp_rnn_tdd_renew_learning_input import tdd_renew_learning_input
from keras_imp_rnn_tdd_renew_foward import tdd_renew_foward
from keras_imp_rnn_tdd_learn import tdd_learn


gene=3
#gene=10
g=gene-1
#alpha=0.1
#alpha=0.5
#alpha=0.9
alpha=1.0
#finals=100
finals=5040
#finals=1000
#j=0
data_size=50.0

os.system(': > learning_input.txt')
os.system(': > learning_input_tmp.txt')
#os.system(': > learning_output0.txt')
os.system(': > scr_output_learn.txt')
#os.system(': > "scr_output"$j"_foward.txt"')
#os.system(': > "scr_output"$j"_learn.txt"')

for j in range(0, g+1):
    os.system(": > learning_output"+str(j)+".txt")


for j in range(0, g+1):
    tdd_ini(j)
#python3 keras_rnn_tdd_ini.py $j > "scr_output"$j"_learn.txt"
os.system('cp foward_input_ini.txt foward_input.txt')

for k in range(0, finals+1, 100):

###i=0
#    for i in range(k, k+2):
    for i in range(k, k+100):
        #print(i)
        print("tdd_foward")
        for j in range(0, g+1):
            tdd_foward(j)
        print("tdd_renew_learning_input")
        tdd_renew_learning_input()
        #python3 keras_rnn_tdd_foward.py $j >> "scr_output"$j"_foward.txt"
        #python3 keras_rnn_tdd_renew_learning_input.py >> "scr_output"$j"_foward.txt"
        print("./out_learn "+str(alpha)+" "+str(i)+" "+str(gene)+" "+str(data_size)+" >> scr_output_learn.txt")
        os.system("./out_learn "+str(alpha)+" "+str(i)+" "+str(gene)+" "+str(data_size)+" >> scr_output_learn.txt")
        print("tdd_renew_foward")
        tdd_renew_foward()
        #python3 keras_rnn_tdd_renew_foward.py >> "scr_output"$j"_foward.txt"

    print("tdd_learn")
    for j in range(0, g+1):
        tdd_learn(j)
    #python3 keras_rnn_tdd_learn.py $j >> "scr_output"$j"_learn.txt"


