function i = to_monocrome(img)
    [r, c] = size(img);
    threshold = mean(img(:));
    for x = 1:r
        for y = 1:c
            if img(x,y) >= threshold
                img(x,y) = 255;
            else
                img(x,y) = 0;
            end
        end
    end
    i = img;
end