function [ raiz ] = PuntoFijoSEL( u, v, x0, y0, error )

syms x;
syms y;
e = 100;

fx = diff(u,x);
fy = diff(u, y);
gx = diff(v,x);
gy = diff(v, y);

while e > error
    if (abs(subs(subs(fx,x,x0),y,y0)) + abs(subs(subs(gx,x,x0),y,y0)))>= 1 || (abs(subs(subs(fy,x,x0),y,y0)) + abs(subs(subs(gy,x,x0),y,y0))) >=  1  
        
        display('No converge');
        return;
    end
    x1 = subs(subs(u,x, x0), y,y0);
    y1 = subs(subs(v,x, x1), y,y0);
    ex = abs((x1-x0)/x1)*100;
    ey = abs((y1-y0)/y1)*100;
    e = max(ex, ey);
    x0 = x1;
    y0 = y1;
end
raiz = [x0 y0];
end

