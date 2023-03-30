import tensorflow as tf
import numpy as np
#import matplotlib.pyplot as plt
#import pandas as pd
#from tensorflow.keras.preprocessing.sequence import pad_sequences
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Embedding, TimeDistributed, Dense, SimpleRNN, Activation
#from pprint import pprint
import sys

def loss_fn(model, x, y):
    sequence_loss = tf.keras.losses.mean_squared_error(
#    sequence_loss = tf.keras.losses.binary_crossentropy(
        y_true=y, y_pred=model(x)
    )
    return sequence_loss


def tdd_ini(args1):

    X = np.random.rand(4,40,16)
    print(X)


    #y = np.random.randint(0,2,(4,16)) * 2 - 1
    y = np.random.randint(0,2,(4,16)) * 2 - 1
    print(y)


    #train_ds = tf.data.Dataset.from_tensor_slices((X, y, X_len)).shuffle(buffer_size=4).batch(batch_size=2)

    train_ds = tf.data.Dataset.from_tensor_slices((X, y)).shuffle(buffer_size=4).batch(batch_size=2)
    #train_ds = tf.data.Dataset.from_tensor_slices((X, y)).shuffle(buffer_size=5).batch(batch_size=3)

    print("train_ds")
    print(train_ds)





    model = Sequential([
    #    Embedding(input_dim=input_dim, output_dim=output_dim,
    #              mask_zero=True, trainable=False, input_length=10,
    #              embeddings_initializer=tf.keras.initializers.random_normal()),
    #    SimpleRNN(units=16, input_shape=(4, 16), return_sequences=True),
    #    SimpleRNN(units=16, activation="tanh", input_shape=(4, 16)), #sigmoid #tanh!!!
        SimpleRNN(units=16, activation="tanh", input_shape=(40, 16)), #sigmoid #tanh!!!
    #    TimeDistributed(Dense(units=16, activation='softmax'))
    #    TimeDistributed(Activation('tanh'))
    #    TimeDistributed(Activation('tanh'))
    ])

    model.summary()

    optimizer = tf.keras.optimizers.Adam(learning_rate=0.01)#, clipvalue = 1.0)

    tr_loss_hist = []

    for e in range(2):
        avg_tr_loss = 0
        #print("avg_tr_loss:"+str(avg_tr_loss))
        tr_step = 0
    
        for x_mb, y_mb in train_ds:
            print("x_mb")
            #print(x_mb)
            print(y_mb)
            #y_test=model(x_mb)
            #print(y_test)

            with tf.GradientTape() as tape:
                tr_loss = loss_fn(model, x_mb, y_mb)
                print("tr_loss:"+str(tr_loss.numpy()))
            grads = tape.gradient(tr_loss, model.trainable_variables)
            optimizer.apply_gradients(grads_and_vars=zip(grads, model.trainable_variables))
            avg_tr_loss += tr_loss
            #print("avg_tr_loss:"+str(avg_tr_loss))
            tr_step += 1
        
            break;
        avg_tr_loss /= tr_step
        tr_loss_hist.append(avg_tr_loss)
   
        if (e + 1) % 5 == 0:
            print(str(e)+":"+str(avg_tr_loss));

    y_pred = model.predict(X)

    print(y_pred)

    #print("loss: "+str(avg_tr_loss));

    model.save("keras_rnn_tdd"+str(args1))

    #y_pred_pos = list(map(lambda row: [idx2pos.get(elm) for elm in row], y_pred.astype(np.int32).tolist()))


