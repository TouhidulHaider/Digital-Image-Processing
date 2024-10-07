clc,close all;
img = imread("./org.jpg");
%img = im2gray(img);
img = double(img);

[x,y,z] = size(img);
smoothed_image = img.*0;

for i = 2:x-1
        for j = 2:y-1
            for k = 1:z
                temp = 0;
                for l = -1:1
                    for m = -1:1
                        temp(end+1) = img(i+l,j+m,k);
                    end
                end
                temp = sort(temp);
                smoothed_image(i,j,k) = temp(5);
            end
        end
    end
    smoothed_image = uint8(smoothed_image);

imshow(uint8(img)), title('Original Image');
figure, imshow(uint8(smoothed_image)), title('Smoothed Image');