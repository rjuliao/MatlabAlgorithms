function [ bin ] = DecToBin( dec )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
bin = [];
pos = 1;
while dec > 0
    
    res = mod(dec,2);
    %display(res);
    bin(pos) = res;
    pos = pos + 1;
    dec = floor(dec/2);
    
end

bin = fliplr(bin);



end

