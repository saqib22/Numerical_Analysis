x=[0.0 0.2 0.4 0.6 0.8 1.0];%x;  
fx=[0.0000000 7.7800000 10.6800000 8.3700000 3.9700000 0.0000000]; % inputting values of y
dt=zeros(6,10); % function 
for i=1:6 dt(i,1)=x(i);% for loop 
dt(i,2)=fx(i); % calling function 
end 
n=5; % number of iterations 
for j=3:10
for i=1:n
dt(i,j)=dt(i+1,j-1)-dt(i,j-1);
end
n=n-1;
end 
h=x(2)-x(1) % finding the value of h
xp=0.25; % defining the value of xp 
for i=1:5
q=(xp-x(i))/h; % calculating number of intervals 
if (q>0&&q<1)
p=q;
 end
 end
 p
l=xp-(p*h);
 for i=1:5 
 if(l==x(i))
 r=i;
 end
 end % calculating different value of y
 f0=fx(r);
 f01=dt(r,3); 
 f02=dt(r,(3+1));
 f03=dt((r),(3+2));
 f04=dt((r),(3+3));
% using the forward interpolation formula 
 
 fp=(f0)+((p*f01)+(p*(p-1)*f02)/(2)) + ((p*(p-1)*(p-2)*f03)/(6))+((p*(p-1)*(p-2)*(p-3)*f04)/(24))
