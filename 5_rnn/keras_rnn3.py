import tensorflow as tf
from tensorflow.keras.layers import SimpleRNN

x = tf.random.normal((1, 3, 2))
print(x)

layer = SimpleRNN(4, input_shape=(3, 2), return_sequences=True)
output = layer(x)
print(output)

print(output.shape)
# (1, 3, 4)
