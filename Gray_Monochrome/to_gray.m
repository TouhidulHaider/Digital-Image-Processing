function i = to_gray(img)
    r = img(:,:,1);
    g = img(:,:,2);
    b = img(:,:,3);

    i = 0.299 * r + 0.587 * g + 0.114 * b;
end