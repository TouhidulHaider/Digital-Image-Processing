function r = modulo(img, x)
    r = img - (x*floor(img/x));


    
%{
a = input("a:")
b = input('b:')
r = a - (b*floor(a/b))
%}

%{ 
Math Formula: 
Dividend = Divisor x Quotient + Remainder 
So, Remainder = Dividend - (Divisor x Quotient)
%}