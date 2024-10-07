function m = modulo(d,x)
    numerator = d;
    denominator = x;
    result = round(numerator/denominator);
    
    remainder = numerator - (result*denominator);
    m = remainder;