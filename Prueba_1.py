import tensorflow as tf
from tensorflow.keras.datasets import fashion_mnist
import matplotlib.pyplot as plt

def main():
    print('Hola Luis Fernando')

def data():
    (x_train, _), (x_test, _) = fashion_mnist.load_data()
    print('Max value in the x_train is', x_train[0].max())
    print('Min value in the x_train is', x_train[0].min())
    return x_train,x_test

def show_figure(x_test):
    fig, axs = plt.subplots(5, 10)
    fig.tight_layout(pad=-1)
    plt.gray()
    a=0
    for i in range(5):
        for j in range(10):
            axs[i, j].imshow(tf.squeeze(x_test[a]))
            axs[i ,j].xaxis.set_visible(False)
            axs[i ,j].yaxis.set_visible(False)
            a = a+1
if __name__ == '__main__':
    try:
        main()
        x_train, x_test = data()
        show_figure(x_test)
    except KeyboardInterrupt:
        print("Press Ctrl-C to terminate while statement")
        pass
