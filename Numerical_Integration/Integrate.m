% Trapezoidal rule
x = [10 11];
y = [193.6 165.6];
a = x(1);
b = x(length(x));
n = length(x) - 1;
h = (b - a) / n;
 
temp = 0;
for i = 1:length(x)
    if (i == 1 || i == length(x))
        temp = temp + y(i);
    else
        temp = temp + 2*y(i);
    end
end
 
w1 = (h/2) * temp;
 
fprintf('Trapezoidal rule gives us work: %f\n',w1);
 
% Simpson's 1/3 rule
x = [2 3 4];
y = [294.4 266.4 260.8];
a = x(1);
b = x(length(x));
n = length(x) - 1;
h = (b - a) / n;
 
temp = y(1) + y(length(x));
even = 0;
odd = 0;
for i = 2:length(x)-1
    if(mod(i,2) == 0)
        even = even + y(i);
    else
        odd = odd + y(i);
    end
end
 
w2 = (h/3) * (temp + 4*even + 2*odd);
 
fprintf('Simpsons 1/3 rule gives us work: %f\n',w2);
 
% Simpson's 3/8 rule
x = [4 6 8 10];
y = [260.8 260.5 249.6 193.6];
a = x(1);
b = x(length(x));
n = length(x) - 1;
h = (b - a) / n;
 
temp = y(1) + y(length(x));
three_mul = 0;
two_mul = 0;
for i=2:length(x)-1
    if(mod(i - 1,3)==0)
        three_mul = three_mul + y(i);
    else
        two_mul = two_mul + y(i);
    end
end
 
w3 = (3*h / 8) * (temp + 3*two_mul+ 2*three_mul);
 
 
fprintf('Simpsons 3/8 rule gives us work: %f\n',w3);
 
work = w1 + w2 + w3;
 
fprintf('Therefore Work is: %f\n',work);
