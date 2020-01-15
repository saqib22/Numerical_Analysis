%Author = Saqib Ali Khan
%CMS ID = 174586
 
function [root] = Regula_falsi_method(xl, xu, tolerance, func  )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
 
    for i = 1:2000
        fxl = func(xl);
        fxu = func(xu);
        root = xu - ((fxu * (xl-xu)) / (fxl-fxu));
        error = abs((root - xu)/root) * 100;
        
        if (error <= tolerance && root ~= 0)
            break
        end
                
        if (fxu * func(root) < 0)
            xl = xu;
        end
        
        xu = root;
 
    end
end
