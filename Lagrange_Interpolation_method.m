function y0= lagrange_interp(x, y, x0)
x= input('Enter x values: ');
y= input('Enter y values: ');
x0= input('Enter new x: ');

%x is the vector of abscissas.
%y is the matching vector of ordinates.
%x0 represents target to be interpolation

y0=0;
n=length(x);
    for j=1: n
        t=1;
        for i=1:n
            if i~=j
                t=t*(x0-x(i))/(x(j)-x(i));
            end
        end
        y0 = y0+t*y(j);
    end
end

% Function implementing Lagrange Interpolation to estimate the value of a function at a given point based on input data points
