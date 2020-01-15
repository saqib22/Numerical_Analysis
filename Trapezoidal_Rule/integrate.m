%f(x)=0.2+2x+90x^2-120x^3+25x^4
 
ezplot('25*x.^4-120*x.^3+90*x.^2+2*x+0.2', [0, 2]), hold on
approx = zeros(1,7); %initialize vector of results
for j = 1:7
    n = 2^j;
    x = 2*(0:1/n:1);
    plot(x, (25*x.^4-120*x.^3+90*x.^2+2*x+0.2), 'r')
    weights = [1, 2*ones(1,n-1), 1];
    approx(j) = 2/(2*n)*(25*x.^4-120*x.^3+90*x.^2+2*x+0.2)*weights';
end
disp('Using Trapezoidal Rule')
disp('         n       Approximation')
for j = 1:7
    disp(['n = ', num2str(2^j, '%d'), '    ', num2str(approx(j), '%1.10f')])
end
