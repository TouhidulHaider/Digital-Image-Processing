img = imread('C:\Users\HP\Documents\MATLAB\Digital Image Processing\Images\bright.jpg');
negativeImg = 255 - img;
figure('Name','Negative Image')
imshow(negativeImg)