function [ raiz ] = FalsaPosicion( f, a, b, error )
%f = @(x)(x^6 - 5*x^5 - 4*x^3 + 2*x + 1);

if f(a) == 0
    raiz = 0;
    return;
end
if f(b) == 0
    raiz = 0;
    return;
end
if f(a)*f(b) > 0
    display('No hay raices en el intervalo');
end

while b-a > error
    
    m = (a*f(b) - b*f(a))/(f(b)-f(a));
    if f(a)*f(m) == 0
        raiz = m;
        return;
    end
    if m == a
        raiz = a;
        return;
    end
    if m == b
        raiz = b;
        return;
    end
    if f(a)*f(m) > 0
        a = m;
    else
        b = m;
    end
end

raiz =(a+b)/ 2;
end

