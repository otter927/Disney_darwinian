import os
import tensorflow as tf
import numpy as np
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Embedding, TimeDistributed, Dense, SimpleRNN, Activation
from keras_imp_rnn_tdd_ini import tdd_ini
from keras_imp_rnn_tdd_foward import tdd_foward
from keras_imp_rnn_tdd_renew_learning_input import tdd_renew_learning_input
from keras_imp_rnn_tdd_renew_foward_out_foward import tdd_renew_foward_out_foward
from keras_imp_rnn_tdd_learn import tdd_learn

from keras_imp_rnn_tdd_ini_dqn import tdd_ini_dqn
from keras_imp_rnn_tdd_foward_learn_dqn import tdd_foward_learn_dqn

import math
import random

gene=2
g=gene-1
#alpha=0.1
#alpha=0.5
alpha=0.9
#finals=100
finals=5040
#finals=1000
#j=0

os.system(': > learning_input.txt')
os.system(': > learning_reward.txt')
os.system(': > learning_input_tmp.txt')
os.system(': > learning_reward_output_tmp.txt')
os.system(': > learning_output_dqn.txt')
os.system(': > log_actions.txt')
#os.system(': > learning_output0.txt')
os.system(': > scr_output_learn.txt')
os.system(': > scr_output_foward.txt')
#os.system(': > "scr_output"$j"_foward.txt"')
#os.system(': > "scr_output"$j"_learn.txt"')


def probability(e1, e2, t):
    if (e2 > e1):
        print("an:e1 "+str(e1)+",e2 "+str(e2))
        print("an:probability1 "+str(1))
        return(1)
    elif (e2 == e1):
        print("an:probability2 "+str(pow(math.e, (-0.1/t))))
        return(pow(math.e, (-0.1/t)))
    else:
        print("an:probability3 "+str(pow(math.e, ((e2 - e1)/t))))
        return(pow(math.e, ((e2 - e1)/t)))

def tempreture(r):
    alpha = 100
    print("an:tempreture "+str(pow(alpha, r)))
    return(pow(alpha, r))



for k in range(0, finals+1, 60):

    if (k % 720 == 0):
        max_reward = 0.00001;
        max_nn = 0;
        reward = 0.00002;
        nn = 0;
        
###i=0
#    for i in range(k, k+100):
#    for i in range(k, k+2):
    for i in range(k, k+60):
        #print(i)


        
#        print("tdd_foward_learn_dqn")
#        tdd_foward_learn_dqn(agent) ##new dqn

        rand1 = random.random()
        print("an:nn "+str(nn)+" max_nn "+str(max_nn))
        print("an:rand1 "+str(rand1))
        if probability(1/max_reward, 1/reward, tempreture((i%720)/720)) < rand1:
            print("an:newnn")
            nn = random.randint(0,1)
            while (nn == max_nn):
                nn = random.randint(0,1)
            if (nn == 0):
                reward = 0.9 #tdd_forward_learn_anealing(nn);
            else:
                reward = 0.1
            print("an:nn "+str(nn))
            print("an:reward "+str(reward))

            print("an:nn "+str(nn)+" max_nn "+str(max_nn))
            if probability(1/max_reward, 1/reward, tempreture((i%720)/720)) < rand1:
                max_nn = nn
                max_reward = reward            
                print("an:renew max")
                print("an:max_nn "+str(max_nn))
                print("an:max_reward "+str(max_reward))


        else:
            print("an:oldnn")
            nn = max_nn
            reward = max_reward
            print("an:nn "+str(nn))
            print("an:reward "+str(reward))

        

