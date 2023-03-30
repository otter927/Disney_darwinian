import tensorflow as tf
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from tensorflow.keras.preprocessing.sequence import pad_sequences
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Embedding, TimeDistributed, Dense, SimpleRNN
from pprint import pprint


X = [[ 1,  7, 10,  0,  0,  0,  0,  0,  0,  0],
 [13, 11, 14,  5,  0,  0,  0,  0,  0,  0],
 [13, 11,  2,  9,  8,  4, 12,  0,  0,  0],
 [13, 11, 14,  6,  3,  0,  0,  0,  0,  0]]
X_mask = [[1., 1., 1., 0., 0., 0., 0., 0., 0., 0.],
 [1., 1., 1., 1., 0., 0., 0., 0., 0., 0.],
 [1., 1., 1., 1., 1., 1., 1., 0., 0., 0.],
 [1., 1., 1., 1., 1., 0., 0., 0., 0., 0.]]
X_len = [3., 4., 7., 5.]

y = [[6, 7, 1, 0, 0, 0, 0, 0, 0, 0],
 [4, 7, 2, 1, 0, 0, 0, 0, 0, 0],
 [4, 7, 3, 4, 5, 1, 4, 0, 0, 0],
 [4, 7, 2, 1, 7, 0, 0, 0, 0, 0]]

train_ds = tf.data.Dataset.from_tensor_slices((X, y, X_len)).shuffle(buffer_size=4).batch(batch_size=2)

print(train_ds)


num_classes = 8 #len(pos2idx)
input_dim = 15 #len(word2idx)
output_dim = 15 #len(word2idx)



model = Sequential([
    Embedding(input_dim=input_dim, output_dim=output_dim,
              mask_zero=True, trainable=False, input_length=10,
              embeddings_initializer=tf.keras.initializers.random_normal()),
    SimpleRNN(units=10, return_sequences=True),
    TimeDistributed(Dense(units=num_classes))
])

model.summary()



def loss_fn(model, x, y, x_len, max_sequence):
    masking = tf.sequence_mask(x_len, maxlen=max_sequence, dtype=tf.float32)
    sequence_loss = tf.keras.losses.sparse_categorical_crossentropy(
        y_true=y, y_pred=model(x), from_logits=True
    ) * masking
    sequence_loss = tf.reduce_mean(tf.reduce_sum(sequence_loss, axis=1) / x_len)
    return sequence_loss

optimizer = tf.keras.optimizers.Adam(learning_rate=0.1)



tr_loss_hist = []

for e in range(30):
    avg_tr_loss = 0
    tr_step = 0
    
    for x_mb, y_mb, x_mb_len in train_ds:
        print(x_mb)
        print(y_mb)
        print(x_mb_len)
        with tf.GradientTape() as tape:
            tr_loss = loss_fn(model, x_mb, y_mb, x_mb_len, max_sequence=10)
        grads = tape.gradient(tr_loss, model.trainable_variables)
        optimizer.apply_gradients(grads_and_vars=zip(grads, model.trainable_variables))
        avg_tr_loss += tr_loss
        tr_step += 1
    avg_tr_loss /= tr_step
    tr_loss_hist.append(avg_tr_loss)
   
    if (e + 1) % 5 == 0:
        print('Epoch: {:3}, tr_loss: {:.3f}'.format(e+1, avg_tr_loss))

y_pred = model.predict(X)
y_pred = np.argmax(y_pred, axis=-1) * X_mask

y_pred




#y_pred_pos = list(map(lambda row: [idx2pos.get(elm) for elm in row], y_pred.astype(np.int32).tolist()))

#pprint(y_pred_pos)

#pprint(pos)




