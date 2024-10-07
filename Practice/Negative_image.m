clc; clear all; close all;

img = imread("../Images/group.jpg");
img = im2gray(img);

img = double(img); % Convert to double for calculations

% Get the size of the image
[M, N] = size(img);

% Define the size of the filter
filter_size = 3;
half_filter_size = floor(filter_size / 2);

% Initialize the output image
smoothed_img = zeros(M, N);

% Apply the averaging filter
for i = 1 + half_filter_size : M - half_filter_size
    for j = 1 + half_filter_size : N - half_filter_size
        % Initialize the sum
        sum = 0;
        
        % Sum the values in the filter window
        for k = -half_filter_size : half_filter_size
            for l = -half_filter_size : half_filter_size
                sum = sum + img(i + k, j + l);
            end
        end
        
        % Calculate the average
        smoothed_img(i, j) = sum / (filter_size * filter_size);
    end
end


% Crop the image to remove the border pixels
smoothed_img = smoothed_img(1 + half_filter_size : end - half_filter_size, 1 + half_filter_size : end - half_filter_size);

% Convert the smoothed image back to uint8
smoothed_img = uint8(smoothed_img);

% Display the original and smoothed images
figure;
imshow(uint8(img));
title('Original Image');

figure;
imshow(smoothed_img);
title('Smoothed Image');
