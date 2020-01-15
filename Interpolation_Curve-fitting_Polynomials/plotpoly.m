t = [0:8]; 
y = [40.12 66.78 80.17 86.71 80.77 66.78 44.41 10.51 -32.60];
 
coefficients = polyfit(t,y,2);
func_eval = polyval(coefficients, t);
 
sprintf('Slope : %f\nIntercept %f:  ', coefficients(1), coefficients(2))
 
t3 = [4.5 8.5];
 
t1 = polyval(coefficients, t3);
 
sprintf('At t = 4.5 and t = 8.5\nValue of y = %f\n', t1)
 
plot(t, y, 'x');
hold on;
plot(t, func_eval);
hold off;
