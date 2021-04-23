%% Programa 1 prueba de una red ya entrenada
%% eliminar variables del sistema
clc, clear all, close all;

%% lectura de una Imagen
original_Image = imread('conruido1.jpg');
original_Image_gray = rgb2gray(original_Image);

%% lectura de la imagen original para verificar dimension
original = imread('imagen_original.jpg');
original = rgb2gray(original);


%% Conversion para trabajar con el imagen con decimales
original_Image_2 = im2double(original_Image_gray);

%% Agregar ruido a la Imagen
%noisy_Image = imnoise(original_Image_2,'gaussian',0,0.03);
noisy_Image = original_Image_2;

%% crear la red neuronal 
net = denoisingNetwork('dncnn');

%% Parte de quitar el ruido  a la Imagen
denoised_Image = denoiseImage(noisy_Image, net);

%% Muestra de las imagenes del sistema
montage ({original_Image_2,noisy_Image,denoised_Image,original})
title('Original Noisy')

size(original_Image_gray)
size(original)
