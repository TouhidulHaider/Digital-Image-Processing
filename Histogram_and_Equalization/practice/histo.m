function h = histo(img)
    h = zeros(1,256);
    for i = 1:size(img,1)
        for j = 1:size(img,2)
            h(img(i,j)+1) = h(img(i,j)+1) + 1;
        end
    end
end
