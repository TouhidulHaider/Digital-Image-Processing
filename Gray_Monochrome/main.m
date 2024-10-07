clc; clear all; close all;

img = imread('C:\Users\HP\Documents\MATLAB\Digital Image Processing\Images\group.jpg');

red_channel = img(:, :, 1); 
green_channel = img(:, :, 2);
blue_channel = img(:, :, 3);

% Gray Image
gray = to_gray(img);
% Monocrome Image
mc = to_monochrome(gray);

figure;
subplot(2, 2, 1);
imshow(img);
title('Original Image');

subplot(2, 2, 2);
imshow(red_channel);
title('Red Channel');

subplot(2, 2, 3);
imshow(green_channel);
title('Green Channel');

subplot(2, 2, 4);
imshow(blue_channel);
title('Blue Channel');

figure('Name','Gray Image')
imshow(gray);

figure('Name','Monocrome Image')
imshow(mc);