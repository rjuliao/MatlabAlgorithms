function [ raiz ] = Newton( f, x0, error )

syms x;
e = 100;
while e > error
    fp = subs(diff(f,x),x,x0);
    if fp == 0
        display('No converge');
        return;
    end
    x1 = x0 - subs(f, x, x0)/fp;
    e = abs((x1 - x0)/x1)*100;
    x0 = x1;
end
raiz = x0;

end

