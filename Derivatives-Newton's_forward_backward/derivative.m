% Task 01
function [ y ] = task1( x_val, fx_func, p_xVal )
der_dt=zeros(6,10);
 
for loop_J=1:6 
    der_dt(loop_J,1)=x_val(loop_J);
    der_dt(loop_J,2)=fx_func(loop_J); 
end
 
n=5;
for j=3:10
    for loop_J=1:n
        der_dt(loop_J,j)=der_dt(loop_J+1,j-1)-der_dt(loop_J,j-1);
    end
    n=n-1;
end
 
h=x_val(2)-x_val(1);
 
for loop_J=1:5
    q=(p_xVal-x_val(loop_J))/h;
    if (q>0&&q<1)
        p=q;
    end
end
 
l=p_xVal-(p*h);
 
 for loop_J=1:5
     if(l==x_val(loop_J))
         r=loop_J;
     end
 end
 
fuc_0=fx_func(r);
fuc_11=der_dt((r-1),3);
fuc_12=der_dt((r+1),3);
f02=der_dt((r-1),4);
f31=der_dt((r-2),5);
f32=der_dt((r-1),5);
f04=der_dt((r-2),6);
P = p;
y = fuc_0+(P*(fuc_11+fuc_12))/2+((P*P)*f02)/2+(P*((P*P)-1)*(f31+f32))/12+((P*P)*((P*P)-1)*f04)/24;
end
    