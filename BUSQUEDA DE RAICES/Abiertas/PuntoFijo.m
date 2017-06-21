function [ raiz ] = PuntoFijo( f, x0, error )

syms x;
g = f + x;
gp = diff(g,x);
e = 100;

while e > error
    if subs(gp,x,x0) >= 1
        display('No converge');
    end
    x1 = subs(g,x,x0);
    e = abs((x1-x0)/x1);
    x0 = x1;
end

raiz = x0;
end

