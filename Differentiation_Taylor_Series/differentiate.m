%Part (a)
 
t = [0.5, 0.6, 0.7];
x = [0.4794, 0.5646, 0.6442];
h = t(2) - t(1);
x_i = 0.6;
 
i = find(t == x_i);
p = (x(i + 1) + x(i - 1)-2 * x(i)) / (h * h);
 
fprintf('Velocity at Y = 0.6 is : %f\n', p)
 
% Part (b)
 
syms e(x);
e(x) = sin(x);
f4 = diff(e, 4);
 
range = t(1):0.1:t(length(t));
max_val = max(f4(range));
error = (h^2)*max_val/12;
 
fprintf('Error bound  %f\n', error)
