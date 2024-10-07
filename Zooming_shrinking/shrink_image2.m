clc; close all;

img = imread("coins.png");
[r,c] = size(img);

figure('Name','Original image');
imshow(img);

factor = 3;

shrinked_rows = ceil(r/factor);
shrinked_cols = ceil(c/factor);

shrinked_img = uint8(zeros(shrinked_rows,shrinked_cols));
shrinked_img2 = uint8(zeros(shrinked_rows,shrinked_cols));


for i = 1:r
    for j = 1:c
        shrinked_img(ceil(i/factor), ceil(j/factor)) = img(i,j);
    end
end

% just another way to implement
for i = 1:shrinked_rows
    for j = 1:shrinked_cols
        shrinked_img2(i,j) = img(i*factor,j*factor);
    end
end

figure('Name','Shrinked image');
imshow(shrinked_img);
figure('Name','Shrinked image2');
imshow(shrinked_img2);