import coremltools as ct
import tensorflow as tf

# load .h5 file
tf_model = tf.keras.Sequential([
    tf.keras.layers.Flatten(input_shape=(30, 99)),
    tf.keras.layers.Dense(32, activation=tf.nn.relu),
    tf.keras.layers.Dense(3, activation=tf.nn.softmax)
])

model_frome_tf = ct.convert(tf_model)
model_frome_tf.save("coreML_model.mlmodel")