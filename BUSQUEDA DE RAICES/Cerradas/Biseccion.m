function [ raiz ] = Biseccion( f, a, b, error )
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
    m = (a+b)/2;
    if f(a)*f(m) == 0
        raiz = m;
        return;
    end
    if f(a)*f(m) > 0
        a = m;
    else
        b = m;
        
    end
end
raiz = (a+b)/ 2;
end

