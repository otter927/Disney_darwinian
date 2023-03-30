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

from keras_imp_rnn_tdd_ini_dqn import tdd_ini_dqn
from keras_imp_rnn_tdd_foward_learn_dqn import tdd_foward_learn_dqn


gene=3
g=gene-1
#alpha=0.1
#alpha=0.5
#alpha=0.9
alpha=1.0
#finals=100
finals=5040
#finals=1000
data_size=50.0
#j=0

os.system(': > learning_input.txt')
os.system(': > learning_reward.txt')
os.system(': > learning_input_tmp.txt')
os.system(': > learning_reward_output_tmp.txt')
os.system(': > learning_output_dqn.txt')
os.system(': > log_actions.txt')
#os.system(': > learning_output0.txt')
os.system(': > scr_output_learn.txt')
#os.system(': > "scr_output"$j"_foward.txt"')
#os.system(': > "scr_output"$j"_learn.txt"')


for j in range(0, g+1):
    os.system(": > learning_output"+str(j)+".txt")


for j in range(0, g+1):
    tdd_ini(j)
os.system('cp foward_input_ini.txt foward_input.txt')

for k in range(0, finals+1, 100):

    print("tdd_ini_dqn")
    agent = tdd_ini_dqn(gene) ##new dqn


###i=0
#    for i in range(k, k+100):
#    for i in range(k, k+2):
    for i in range(k, k+100):
        #print(i)

        print("tdd_foward")
        for j in range(0, g+1):
            tdd_foward(j)
        print("tdd_renew_learning_input")
        tdd_renew_learning_input()
        print("./out_learn_dqn "+str(alpha)+" "+str(i)+" "+str(gene)+" "+str(data_size)+" >> scr_output_learn.txt")
        os.system("./out_learn_dqn "+str(alpha)+" "+str(i)+" "+str(gene)+" "+str(data_size)+" >> scr_output_learn.txt")
        print("cp learning_input.txt learning_input_tmp.txt")
        
        print("tdd_foward_learn_dqn")
        tdd_foward_learn_dqn(agent) ##new dqn
        
        print("tdd_renew_foward")
        tdd_renew_foward()


    print("tdd_learn")
    if ((int(k / 720) % 2) == 0):
        print("tdd_learn0-"+str(k))
        tdd_learn(0);
        tdd_learn(1);
    else:
        print("tdd_learn1-"+str(k))
        tdd_learn(1);
        tdd_learn(2);



