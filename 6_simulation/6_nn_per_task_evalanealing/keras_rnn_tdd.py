import tensorflow as tf
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from tensorflow.keras.preprocessing.sequence import pad_sequences
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Embedding, TimeDistributed, Dense, SimpleRNN, Activation
from pprint import pprint

#MBS UL, DL, SBS1 UL, DL, SBS2 UL, DL, ...
X = [[[ 1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9],
[ 1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9],
[ 1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9],
[ 1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9]],
 [ [ 9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1],
 [ 9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1],
 [ 9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1],
  [ 9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1,  9,  1]],
 [ [5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5],
 [5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5],
  [5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5],
   [5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5]],
 [ [ 1,  9,  9,  1,  1,  9,  9,  1,  1,  9,  9,  1,  1,  9,  9,  1],
 [ 1,  9,  9,  1,  1,  9,  9,  1,  1,  9,  9,  1,  1,  9,  9,  1],
 [ 1,  9,  9,  1,  1,  9,  9,  1,  1,  9,  9,  1,  1,  9,  9,  1],
 [ 1,  9,  9,  1,  1,  9,  9,  1,  1,  9,  9,  1,  1,  9,  9,  1]]]

#0,0 = [UUDDDDDDDD]
#0,1 = [UUUUDDDDDD]
#1,1 = [UUUUUUDDDD]
#1,0 = [UUUUUUUUDD]

y = [[-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1],
[-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1],
[-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1],
[-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1]]


#train_ds = tf.data.Dataset.from_tensor_slices((X, y, X_len)).shuffle(buffer_size=4).batch(batch_size=2)

train_ds = tf.data.Dataset.from_tensor_slices((X, y)).shuffle(buffer_size=4).batch(batch_size=2)


print(train_ds)





model = Sequential([
#    Embedding(input_dim=input_dim, output_dim=output_dim,
#              mask_zero=True, trainable=False, input_length=10,
#              embeddings_initializer=tf.keras.initializers.random_normal()),
#    SimpleRNN(units=16, input_shape=(4, 16), return_sequences=True),
    SimpleRNN(units=16, input_shape=(4, 16)),
#    TimeDistributed(Dense(units=16, activation='softmax'))
#    TimeDistributed(Activation('tanh'))
#    TimeDistributed(Activation('tanh'))
])

model.summary()



def loss_fn(model, x, y):
    sequence_loss = tf.keras.losses.mean_squared_error(
#    sequence_loss = tf.keras.losses.binary_crossentropy(
        y_true=y, y_pred=model(x)
    )
    return sequence_loss

optimizer = tf.keras.optimizers.Adam(learning_rate=0.1)



tr_loss_hist = []

for e in range(10):
    avg_tr_loss = 0
    tr_step = 0
    
    for x_mb, y_mb in train_ds:
        print(x_mb)
        #print(y_mb)
        #y_test=model(x_mb)
        #print(y_test)

        with tf.GradientTape() as tape:
            tr_loss = loss_fn(model, x_mb, y_mb)
        grads = tape.gradient(tr_loss, model.trainable_variables)
        optimizer.apply_gradients(grads_and_vars=zip(grads, model.trainable_variables))
        avg_tr_loss += tr_loss
        tr_step += 1
    avg_tr_loss /= tr_step
    tr_loss_hist.append(avg_tr_loss)
   
    if (e + 1) % 5 == 0:
        print(str(e)+":"+str(avg_tr_loss));

y_pred = model.predict(X)

print(y_pred)


model.save("keras_rnn_tdd0")

#y_pred_pos = list(map(lambda row: [idx2pos.get(elm) for elm in row], y_pred.astype(np.int32).tolist()))

#pprint(y_pred_pos)

#pprint(pos)




