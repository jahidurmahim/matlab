%setting x as symbolic variable
syms x;
%input section
y = input ('Enter a non-linear equation: ');
a = input ('Enter initial guess: ');
e = input ('Tolerable Error: ');
N = input ('Enter maximum number of steps: ');

%initial step counter
step=1;

%finding derivate of given function
g = diff(y,x);

%finding functional value
fa = eval(subs(y,x,a));

while abs(fa)>e
    fa = eval(subs(y,x,a));
    ga = eval(subs(g,x,a));
    if ga==0
        disp('Division by zero. ');
        break;
    end
    
    b = a - fa/ga;      %Newton Raphson formula
    fprintf('step=%d\ta=%f\tf(a)=%f\n', step,a,fa);
    a=b;
    
    if step>N
        disp('Not convergent');
        break;
    end
    step=step+1;
    
end

fprintf('Root is %f\n', a);


% Newton-Raphson Method implementation to find roots of a user-defined non-linear equation with derivative check and step limit

     
