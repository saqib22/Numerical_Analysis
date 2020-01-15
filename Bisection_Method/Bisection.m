## @seealso{}
## @end deftypefn

## Author: saqib <saqib@phantom-sk>
## Created: 2019-01-29

function[str] = bisection(xl, xu, tol, f)

if f(xu)*f(xl) < 0
  for i = 2:1000
    xr = (xu + xl) / 2;
    
    if f(xu) * f(xr) < 0
      xl=xr;
    else
      xu=xr;
    end
    
    if f(xl)*f(xr) < 0
      xu=xr;
    else
      xl=xr;
    end
  
    xnew(1)=0;
    xnew(i)=xr;
    
    if abs((xnew(i)-xnew(i-1)) / xnew(i)) < tol
      break;
    end
  end
  
  str = ['Root: ', num2str(xr), ''];

else
  fprintf('Wrong Guess! Retry\n');
end

end
