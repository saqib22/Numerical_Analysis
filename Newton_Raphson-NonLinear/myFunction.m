function [ y ] = myFunction( x )
 
y = zeros(2,1);
y(1) = x(1)^2 + x(2)^2 - 50;
y(2) = x(1)*x(2) - 25;
 
end
