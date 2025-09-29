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
else
    c=(a+b)/2;
    fc= eval(subs(y,x,c));
    fprintf('\n\na\t\t\tb\t\t\tc\t\t\tf(c)\n ');

    while abs(fc)>e
        fprintf('%f\t%f\t%f\t%f\n', a,b,c,fc);

        if fa*fc>0
            a =c;
        else
            b =c;
        end

        c=(a+b)/2;
        fc=eval(subs(y,x,c));
    end

    fprintf('\nRoot is: %f\n', c);

end


%eqn1= x^3-x-1= root(1.324718)
%eqn1= cos(x)-(x*exp(x)= root(0.517757)
%x^3+7x-5= root()
%eqn1= %x^4+2*x+2= root()


% Implementation of Bisection Method to find roots of a user-defined non-linear equation with given guesses and tolerance

