clc; close all;

img = imread("coins.png");
[r,c] = size(img);

figure('Name','Original image');
imshow(img);

factor = 2;
new_rows = round(r/factor);
new_cols = round(c/factor);
shrinked_img = uint8(zeros(new_rows,new_cols));

for i = 1:new_rows
    for j = 1:new_cols
        shrinked_img(i,j) = img(factor*i, factor*j);
    end
end

figure('Name','Shrinked image');
imshow(shrinked_img);