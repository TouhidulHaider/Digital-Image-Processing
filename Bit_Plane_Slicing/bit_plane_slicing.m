img = imread('C:\Users\HP\Documents\MATLAB\Digital Image Processing\Images\bright.jpg');

img = 0.299*img(:,:,1) + 0.587*img(:,:,2) + 0.114*img(:,:,3);

% Check if the image is grayscale
if size(img, 3) == 3
    error('Input image must be grayscale');
end

[rows, cols] = size(img);

figure('Name', 'Bit Plane Slicing');

for bit = 0:7
    % Extract the bit plane manually
    bit_plane = bitand(img, 2^bit); % Bitwise AND with 2^bit
    
    % Normalize the bit plane to the range [0, 255]
    bit_plane = bit_plane * 255;
    
    subplot(2, 4, bit + 1);
    imshow(bit_plane);
    title(['Bit Plane ', num2str(bit)]);
end
