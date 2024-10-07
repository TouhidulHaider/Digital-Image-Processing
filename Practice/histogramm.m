img = imread("cameraman.tif");

[r,c] = size(img);

h = zeros(1,256);

for i = 1:r
    for j = 1:c
        h(img(i,j)+1) = h(img(i,j)+1) + 1;
    end
end

stem(h);

%cdf
cdf = zeros(1,256);
cdf(1) = h(1);
for i=2:255
    cdf(i) = cdf(i-1)+h(i);
end

% cdf normalization
cdf = cdf /(r*c);

% equalize image
equalized_image = uint8(zeros(r,c));
for i = 1:r
    for j = 1:c
        equalized_image(i,j) = uint8(cdf(img(i,j)+1)*256);
    end
end

figure();
subplot(121); imshow(img);
subplot(122); imshow(equalized_image);