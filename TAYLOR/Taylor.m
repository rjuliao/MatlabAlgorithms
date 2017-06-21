function [ p ] = Taylor( f, a, xi, o )

%diff(f,x. orden) derivar la función 
%subs(f,x,2) sustutir en x el valor 2

syms x;
sum = subs(f,x,a);
n = 1;
p = [];
p(n) = sum;

while n <= o
    
    sum = sum + (subs(diff(f,x,n),x,a)*(xi-a)^n)/factorial(n);
    p(n+1) = sum;
    n = n + 1;
end

end

