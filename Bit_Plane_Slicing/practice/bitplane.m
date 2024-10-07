clc; close all;

img = imread('C:\Users\HP\Documents\MATLAB\Digital Image Processing\Images\bright.jpg');
figure(); imshow(img);
[r, c, ~] = size(img);
restored_image = zeros(r,c);

figure("Name","Bit planes");
for i = 0:7
    d = double(img);
    d = floor(d/2^i);
    b = modulo(d,2);
    
    restored_image = restored_image + (b*(2^i));
    
    subplot(2,4,i+1); imshow(b); title(["Bit plane ", num2str(i)]);
end

figure()
imshow(uint8(restored_image));

