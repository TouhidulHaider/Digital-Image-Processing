clc; close all;

img = imread("coins.png");
[r,c] = size(img);

figure('Name','Original image');
imshow(img);

zoom_factor = 2;
new_rows = r*zoom_factor;
new_cols = c*zoom_factor;
zoomed_img = uint8(zeros(new_rows,new_cols));

for i = 1:new_rows
    for j = 1:new_cols
        zoomed_img(i,j) = img(ceil((i*r)/new_rows), ceil((j*c)/new_cols));
    end
end

figure('Name','Zoomed image');
imshow(zoomed_img);