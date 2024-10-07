clc; clear all; close all;
img = imread('C:\Users\HP\Documents\MATLAB\Digital Image Processing\Images\bright.jpg');

img = 0.299*img(:,:,1) + 0.587*img(:,:,2) + 0.114*img(:,:,3);

d = double(img);

b1 = mod(d,2);
b2 = mod(floor(d/2),2);
b3 = mod(floor(d/4),2);
b4 = mod(floor(d/8),2);
b5 = mod(floor(d/16),2);
b6 = mod(floor(d/32),2);
b7 = mod(floor(d/64),2);
b8 = mod(floor(d/128),2);

% both operations are correct
%restored_img = uint8(2 * (2 * (2 * (2 * (2 * (2 * (2*b8 + b7) + b6) + b5) + b4) + b3) + b2) + b1);
restored_img = uint8(b8*128 + b7*64 + b6*32 + b5*16 + b4*8 + b3*4 + b2*2 + b1);

figure('Name','Original Image')
imshow(img)

figure('Name','Bit Planes of the image')
subplot(2,4,1); imshow(b1); title('Bit Plane 1');
subplot(2,4,2); imshow(b2); title('Bit Plane 2');
subplot(2,4,3); imshow(b3); title('Bit Plane 3');
subplot(2,4,4); imshow(b4); title('Bit Plane 4');
subplot(2,4,5); imshow(b5); title('Bit Plane 5');
subplot(2,4,6); imshow(b6); title('Bit Plane 6');
subplot(2,4,7); imshow(b7); title('Bit Plane 7');
subplot(2,4,8); imshow(b8); title('Bit Plane 8');

figure('Name','Restored Image')
imshow(restored_img)