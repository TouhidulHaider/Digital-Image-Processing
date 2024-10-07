function [hi, cdfTx] = equalize_hist(img)
    hi = zeros(1,256);
    cdf = zeros(1,256);
    pixSum = 0;

    for i = 1:256
        hi(i) = sum(img(:) == i);
        pixSum = pixSum + hi(i);
        cdf(i) = pixSum;
    end

    hi = hi/max(cdf);
    cdf = cdf * 255/max(cdf);
    cdfTx = uint8(cdf);
end
