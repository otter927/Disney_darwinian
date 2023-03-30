import numpy as np

from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense, Activation
from tensorflow.lite.python import lite


def fizzbuzz(i):
    if i % 15 == 0:
        return np.array([0, 0, 0, 1]).astype(np.float32)
    elif i % 5 == 0:
        return np.array([0, 0, 1, 0]).astype(np.float32)
    elif i % 3 == 0:
        return np.array([0, 1, 0, 0]).astype(np.float32)
    else:
        return np.array([1, 0, 0, 0]).astype(np.float32)


def bin(i, num_digits):
    return np.array([i >> d & 1 for d in range(num_digits)]).astype(np.float32)


trX = np.array([bin(i, 7) for i in range(1, 101)])
trY = np.array([fizzbuzz(i) for i in range(1, 101)])
model = Sequential()
model.add(Dense(64, input_dim=7))
model.add(Activation('tanh'))
model.add(Dense(4, input_dim=64))
model.add(Activation('softmax'))
model.compile(
    loss='categorical_crossentropy', optimizer='adam', metrics=['accuracy'])
model.fit(trX, trY, epochs=3600, batch_size=64)
model.save('fizzbuzz_model.h5')
