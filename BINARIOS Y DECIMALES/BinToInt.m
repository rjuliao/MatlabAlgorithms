function [ S ] = BinToInt( bin )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
clc, clear all

D = 0;
l = length(bin);

for i = 1:l
    
    if(bin(i) == 1)
        a = D * 2 + 1;
    else
        a = D * 2;
    end
    
    D = a;
end

S = D;




end

