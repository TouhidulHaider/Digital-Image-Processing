clc; clear all; close all;

img = imread('Images\group.jpg');
img2 = imread('Images\bright.jpg');
[row, col,~] = size(img);
[row2, col2,~] = size(img2);

%img3 = imresize(img, [row2 col]);

figure('name', 'BW comparison image name here')
subplot(1,2,1); imshow(img);
subplot(1,2,2); imshow(img2);

%threshold = mean(img(:));

thres = sum(img(:))/(row*col*3);