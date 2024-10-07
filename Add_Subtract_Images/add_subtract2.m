clc; close all;

img = imread('cameraman.tif');
img2 = imread('bag.png');

a = imresize(img, [560 720]);
b = imresize(img2, [560 720]);
c = a+b;
d = a-b;

for i=1:size(c,1)
    for j = 1:size(c,2)
        if c(i,j) > 255
            c(i,j) = 255;
        end
        if d(i,j) < 0
            d(i,j) = 0;
        end
    end
end

figure()
subplot(221); imshow(a);
subplot(222); imshow(c);
subplot(223); imshow(b);
subplot(224); imshow(d);