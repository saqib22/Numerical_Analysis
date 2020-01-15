function [ j ] = jacobiMatrix( x )
 
j = [2*x(1) 2*x(2);x(2) x(1)];
 
end
