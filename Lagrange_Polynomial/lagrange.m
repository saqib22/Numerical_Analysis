function p = lagrange(X, Y)
 
syms x;
m = length(X);
p = 0;
for i = 1:m
    a = 1;
    b = 1;
    for j = 1:m
        if i ~= j
            a = a * (x - X(j));
            b = b * (X(i) - X(j));
        end
    end
    
    term = (a / b) * Y(i);
    p = p + term;
 
p = simplify(p);
end
