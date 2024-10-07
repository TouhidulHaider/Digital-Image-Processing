clc; close all;

img = imread("coins.png");
[r,c] = size(img);

figure('Name','Original image');
imshow(img);

factor = 2;
new_rows = r*factor;
new_cols = c*factor;
zoomed_img = uint8(zeros(new_rows,new_cols));

for i = 1:r
    for j = 1:c
        zoomed_img(i*factor,j*factor) = img(i,j);
    end
end

figure('Name','Zoomed image');
imshow(zoomed_img);