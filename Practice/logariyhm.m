clc;
close all;

img = imread("cameraman.tif");

c = 6;
tx = c*log(1+double(img));
%tx = uint8(255*(tx/max(tx(:))));
tx = uint8(tx);

figure()
imshow(img);
figure()
imshow(tx);