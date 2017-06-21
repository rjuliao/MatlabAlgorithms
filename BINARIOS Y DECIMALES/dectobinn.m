clc; clear all

dec = input('DIGITE NÚMERO: ');

ent = floor(dec); %Separo la parte fracción de la entera
frac= dec-ent;
bintent = DecToBin(ent);

bina= [];
pos = 1;

f = frac;
p = f * 2;

while pos < 10
    
    q = floor(p);
    e = p - q; % obtengo la parte entera
    bina(pos) = q;
    pos = pos + 1;
    
    p = e * 2;

end

display([num2str(bintent) '.' num2str(bina)])








