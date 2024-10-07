clc; close all;

img = imread("C:\Users\HP\Documents\MATLAB\Digital Image Processing\Images\group.jpg");

image = img(:,:,1)*0.299 + img(:,:,2)*0.587 + img(:,:,3)*0.114;  % gray image

h = zeros(1,256);
[rows, cols] = size(image);

for i = 1:rows
    for j = 1:cols
        h(image(i,j)+1) = h(image(i,j)+1) + 1;
    end
end

figure(1); imshow(image);
figure(2); stem(h);

% cdf
cdf = zeros(1,256);
cdf(1) = h(1);
for i = 2:256
    cdf(i) = cdf(i-1)+h(i);
end

% normalize the cdf
cdf = cdf / (rows*cols);

% create the equalized image
equalized_img = uint8(zeros(rows,cols));
for i = 1:rows
    for j=1:cols
        pixel = image(i,j);
        equalized_img(i,j) = uint8(255*cdf(pixel+1));
    end
end

figure(3);
imshow(equalized_img);

equalized_hist = histo(equalized_img);
figure(4)
stem(equalized_hist);