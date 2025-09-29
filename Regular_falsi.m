%setting x as symbolic variable
syms x;

%Input section

y=input('Enter non-linear equation: ');
a=input('Enter first guess: ');
b=input('Enter second guess: ');
e=input('Tolerable error: ');

%Finding functional value

fa= eval(subs(y,x,a));
fb= eval(subs(y,x,b));

%implementation Bisection method
if fa*fb> 0
    disp('Given initial values do not bracket the root. ');
end

%update part of guessing
while(fa*fb>=0)
    a=a+1;
    b=b+1;
    fa= eval(subs(y,x,a));
    fb= eval(subs(y,x,b));
end
    c= a-((a-b)*fa)/(fa-fb);    %false position method law
    fc= eval(subs(y,x,c));
    fprintf('\n\na\t\tb\t\tc\t\tf(c)\n ');

    while abs(fc)>e
        fprintf('%f\t%f\t%f\t%f\n', a,b,c,fc);

        if fa*fc<0
            b =c;
        else
            a=c;
        end

        c= a-((a-b)*fa)/(fa-fb);
        fc=eval(subs(y,x,c));
    end

    fprintf('\nRoot is: %f\n', c);

% Implementation of False Position Method with automatic guess adjustment to find roots of a user-defined non-linear equation

