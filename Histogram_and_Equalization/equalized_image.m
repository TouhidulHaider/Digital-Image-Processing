function i = equalized_image(img, tx)
    [r,c] = size(img);
    i = double(img);
    for x=1:r
        for y=1:c
            i(x,y) = tx(i(x,y)+1);
        end
    end
    i = uint8(i);
end
