%Name : Saqib Ali Khan
%Class : BSCS-6C
%Reg.No. : 174586
 
t = [0:8];
y=[40.12 66.78 80.17 86.71 80.77 66.78 44.41 10.51 -32.60];
 
pc = polyfit(t, y, 2);
 
plot(t,y, 'o');
hold on;
 
pe = polyval(pc, t);
plot(t, pe, 'b-');
hold on;
 
%Task 1
 
fprintf('\nInitial Height: %f\n', pc(3))
fprintf('Initial velocity: %f\n', pc(2))
fprintf('Initial Acceleration: %f\n', pc(1))
 
%Task 2
 
root = roots(pc);
fprintf('\nRoot: %f\n', root(1))
 
%Task 3
height = polyval(pc, 2.5);
 
fprintf('\nHeight at 2.5: %f\n', height)
 
%Task 4
d = polyder(pc);
tmax = roots(d);
max_height = polyval(pc, tmax);
fprintf('\nMax Height: %f\n', max_height)
fprintf('Time of Max Height: %f\n', tmax)
 
plot(tmax, max_height, 'x')
hold off;
