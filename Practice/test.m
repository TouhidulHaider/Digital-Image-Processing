img = imread("cameraman.tif");

[row,col] = size(img);

c = 0.2;
tx = zeros(row,col);

for i = 1:row
    for j = 1:col
        d = double(img(i,j));
        tx(i,j) = c*log(1+d);
    end
end
imshow(tx)
