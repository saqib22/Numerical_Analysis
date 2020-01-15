%Author : Saqib Ali Khan
%Class : BSCS-6C
%CMS ID : 174585
 
function [ root ] = newton_raphson_method( x0, tolerance, f)
    r = x0;
    syms x;
    
    %Symbolic expression of Newton-Ralphson
    f = x - (f / diff(f));
    
    for i = 1:2000
        %Subs: subtitues the the value r in x in symbolic expression
        %vpa: evaluate the symbolic expression after substitution
        r = vpa(subs(f, x, r));
        error = abs(r - x0);
        if (error < tolerance)
            break
        end
        x0 = r;     %Update the initial value 
    end
    root = r;   %return the approximate root of function
end
