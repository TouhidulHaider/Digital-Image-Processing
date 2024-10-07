clc;
close all;

img = imread("cameraman.tif");

figure()
imshow(img);

figure()
for c = 1:10
    x = c/10;
    tx = x*log(1+double(img));
    tx = uint8(tx);
    subplot(2,5,c);
    imshow(tx);
    title(['C = ', num2str(x)]);
end

figure()
for c = 1:10
    tx = c*log(1+double(img));
    tx = uint8(255*(tx/max(tx(:))));
    subplot(2,5,c);
    imshow(tx);
    title(['C = ', num2str(c)]);
end

figure()
for c = 1:10
    tx = c*log(1+(double(img)/255));
    subplot(2,5,c);
    imshow(tx);
    title(['C = ', num2str(c)]);
end