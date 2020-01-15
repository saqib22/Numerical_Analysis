x = [0, 25, 50, 75, 100, 125];
y = [0, 32, 58, 78, 92, 100];
 
% Part (a)
i = find(x == 25);
result = (y(i+1)-y(i))/h;
fprintf('Velocity at t = 25: %f\n',result);
 
%Part (b)
i = find(x == 50);
result = (y(i+1)-y(i-1))/(2*h);
fprintf('Velocity at t = 50: %f\n', result);
 
%Part (c)
i = find(x == 125);
h = x(2) - x(1);
 
result = (3*y(i)+y(i-2)-4*y(i-1))/(2*h);
 
fprintf('Velocity at t = 125 : %f\n', result);
