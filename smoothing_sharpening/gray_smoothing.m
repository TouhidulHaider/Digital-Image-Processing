clc,close all;
img = imread("./org.jpg");
img = im2gray(img);
img = double(img); % Convert to double for precision

% Define the size of the box filter
filterSize = 3;
filter = ones(filterSize, filterSize) / (filterSize * filterSize);

% Get the dimensions of the image
[R, C] = size(img);

% Initialize the output image
filteredImg = zeros(R, C);

% Apply the box filter
for i = 2:R-1
    for j = 2:C-1
        sum = 0;
        for l = -1:1
            for m = -1:1
                sum = sum + filter(2+l, 2+m)*img(i+l,j+m);
            end
        end
        filteredImg(i,j) = sum;
    end
end
                    
imshow(uint8(img)), title('Original Image');
figure, imshow(uint8(filteredImg)), title('Filtered Image');
