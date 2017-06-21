function [ prec ] = Precision( f, xi, h,vo )

syms x;
xi1 = xi + h; 
xi2 = xi1 + h;
xi3 = xi2 + h;

r1 = subs(diff(f, x),x,vo);
r2 = subs(diff(f, x, 2),x,vo);

p = subs(f,x,xi1);
r = subs(f,x,xi2);
z = subs(f,x,xi3);
q = subs(f,x,xi);

Oh11 = (p - q)/h;
Oh21 = (-r + 4*p - 3*q)/(2*h);
Oh12 = (r - 2*p + q)/h^2;
Oh22 = (-z + 4*r - 5*p + 2*q)/h^2;

er11 = abs((r1-Oh11)/r1)*100;
er21 = abs((r1-Oh21)/r1)*100;
er12 = abs((r2-Oh12)/r2)*100;
er22 = abs((r2-Oh22)/r2)*100;


prec = [r1 Oh11 Oh21 er11 er21;...
     r2 Oh12 Oh22 er12 er22];

end

