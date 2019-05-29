# Denoising Autoencoder 

Denoising autoencoder implemented with skip connections between encoder and decoder. Trained using the dogs and cats dataset (dogs only) from [Kaggle](https://www.microsoft.com/en-us/download/details.aspx?id=54765). 

Influences:  
* [Resnet](https://arxiv.org/abs/1512.03385)
* [Keras Blog](https://blog.keras.io/building-autoencoders-in-keras.html)

## Examples of Denoising (2 epochs):

![Example1](https://github.com/tommythetomato/denoising_autoencoder/blob/master/examples%20/example1.png)

![Example2](https://github.com/tommythetomato/denoising_autoencoder/blob/master/examples%20/example2.png)

Noise simulated using numpy.random.

## Architecture can be used for inverse halftoning as well. Example of inverse halftoning (2 epochs): 

![Example3](https://github.com/tommythetomato/denoising_autoencoder/blob/master/examples%20/example3.png)

Halftones versions of the original image were created in Matlab. 

## Architecture:

![Architecture](https://github.com/tommythetomato/denoising_autoencoder/blob/master/examples%20/architecture.png)

