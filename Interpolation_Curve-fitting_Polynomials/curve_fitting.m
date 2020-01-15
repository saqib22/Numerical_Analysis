data=[0 .3
1 .9
2 2.2
3 3.1
4 4.0
5 5.4];
 
x = data(:, 1);
y = data(:, 2);
 
coefficients = polyfit(x,y,1);
func_eval = polyval(coefficients, x);
 
 
plot(x, y, 'x');
hold on;
plot(x, func_eval)
hold off;
