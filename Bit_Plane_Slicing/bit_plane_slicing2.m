clc; close all;
img = imread('C:\Users\HP\Documents\MATLAB\Digital Image Processing\Images\bright.jpg');

img = 0.299*img(:,:,1) + 0.587*img(:,:,2) + 0.114*img(:,:,3);
figure('Name','Original image');
imshow(img)

figure('Name', 'Bit Plane Slicing');

[rows, cols] = size(img);
restored_img = zeros(rows, cols);

for i = 0:7
    d = double(img);
    d = floor(d/2^i);
    b = mod(d,2);
    
    restored_img = restored_img + (b*(2^i));

    subplot(2, 4, i + 1);
    imshow(b);
    title(['Bit Plane ', num2str(i)]);
end

figure('Name', 'Restored image');
imshow(uint8(restored_img));