function h = imghist(img)
    h = zeros(1,256);
    for i = 0:255
        h(i+1) = sum(img(:)==i);
    end
end
