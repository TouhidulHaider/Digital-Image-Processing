clc; clear all; close all;

img1 = imread('C:\Users\HP\Documents\MATLAB\Digital Image Processing\Images\bright.jpg');
img2 = imread('C:\Users\HP\Documents\MATLAB\Digital Image Processing\Images\group.jpg');

[r1, c1, ~] = size(img1);
[r2, c2, ~] = size(img2);

if (r1 > r2) & (c1 > c2)
    img1 = imresize(img1, [r2 c2]);
end

if (r1 < r2) & (c1 < c2)
    img2 = imresize(img2, [r1 c1]);
end

img1 = double(img1);
img2 = double(img2);

% Ensure pixel values are within [0, 255] range after addition and subtraction
sum_image = min(max(img1 + img2, 0), 255);
diff_image = min(max(img1 - img2, 0), 255);

% Convert back to uint8 for display
sum_image = uint8(sum_image);
diff_image = uint8(diff_image);

figure('Name','Image 1 and Image 2')
subplot(121); imshow(uint8(img1));
subplot(122); imshow(uint8(img2));

figure('Name','Sum Image')
imshow(sum_image)
figure('Name','Difference/Subtracted Image')
imshow(diff_image)

