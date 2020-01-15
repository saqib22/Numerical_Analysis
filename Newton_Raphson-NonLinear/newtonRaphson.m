function [ output, niter ] = newtonRaphson( f, j, x0, tol, maxIter )
% f is the non linear system of equations
% j is the jacobian matrix of f
% x0 is the initial guess
% tol is the error tolerance and the iterations are stopped when the
% relative error between two consecutive approximations is less than tol
% maxIter is the maximum iterations
 
%Using Newton-Raphson method
 
xold = x0(:);
xnew = xold - feval(j,xold) \ feval(f,xold);
 
for i=1:maxIter
    xold = xnew;
    xnew = xold - feval(j,xold) \ feval(f,xold);
    iter = i;
    
    % Checking if the iterations need to be interrupted
    if norm(xold-xnew,'inf')/norm(xnew,'inf') < tol || iter == maxIter
        break;
    end
end
    
output = xnew;
niter = iter;
 
end
