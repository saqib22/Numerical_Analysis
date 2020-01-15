%Author : Saqib Ali Khan
%Class : BSCS-6C
%CMS ID : 174586
 
function [ y ] = f( x )
 
syms x;    %Create a symbolic constant
y = 2 * x.^2 + 3 * x + 1;     % return a symbolic function
 
end
