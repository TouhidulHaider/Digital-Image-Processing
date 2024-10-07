clc; clear all; close all;
img = imread('C:\Users\HP\Documents\MATLAB\Digital Image Processing\Images\group.jpg');

img = 0.299*img(:,:,1) + 0.587*img(:,:,2) + 0.114*img(:,:,3);

h = imghist(img);

[hi, cdfTx] = equalize_hist(img);
equalizedImg = equalized_image(img, cdfTx);

figure('Name','Histogram')
subplot(2,1,1); imshow(img);title('Image');
subplot(2,1,2); bar(0:255,h);title('Histogram');

figure('Name','Histogram Equalization')
subplot(211); bar(0:255,imghist(equalizedImg));title('Equalized Histogram');
subplot(212); bar(0:255,cdfTx);title('CDF Histogram');

figure('Name','Histogram equalized Image')
imshow(equalizedImg);title('Equalized High Contrast Image')