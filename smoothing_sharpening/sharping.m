function smoothed_image = sharping(image)
    
    image = double(image);
    smoothed_image = image.*0;
    [x,y,z] = size(image);

    
    w = [ -1,-1,-1;
          -1,9,-1;
          -1,-1,-1 ];
      
    for i = 2:x-1
        for j = 2:y-1
            for k = 1:z
                temp = 0;
                for l = -1:1
                    for m = -1:1
                        temp = temp + w(2+l,2+m)*image(i+l,j+m,k);
                    end
                end
                smoothed_image(i,j,k) = temp;
            end
        end
    end
    smoothed_image = uint8(smoothed_image);
end