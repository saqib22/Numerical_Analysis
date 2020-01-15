g = 9.8;
m = 68.1;
cd = 0.25;
t = 0:0.000001:10; 
v = sqrt(g*m/cd)*tanh(sqrt(g*cd/m).*t);
 
a = t(1);
b = t(length(t));
n = length(t) - 1;
h = (b - a)/ n;
temp = v(1) + v(length(v));
 
for i = 2:length(v)-1
    temp = temp + 2*v(i);
end
 
dist = (h/2)*temp;
 
fprintf(' Trapezoidal rule gives : %f\n', dist); 
