%Author = Saqib Ali Khan
%CMS ID = 174586
 
function [root] = fixed_point_iteration(x, tolerance, gfunc  )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    x1 = x;
    x2 = gfunc(x1);
    count = 0;
    while (abs(x2 - x1) / x2) > tolerance && count < 2000
        x1 = x2;
        x2 = gfunc(x1);
        count = count + 1;
    end
 
    root = x2;
    
end
