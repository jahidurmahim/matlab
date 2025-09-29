syms x
y=input('Input your function:');
a=input('Enter lower limit: ');
b=input('Enter upper limit: ');
n= input('Enter steps: ');  %steps or sub interval

%input intregation limits and interval of ordinates

dx= (b-a)/n;
fa= eval(subs(y,x,a));
fb= eval(subs(y,x,b));
intregation=fa+fb;
for i=1:n-1
    k=a+(i*dx);
    fk=eval(subs(y,x,k));
    intregation = intregation+(2*fk);
end

intregation = (intregation*dx)/2;
disp(intregation);


% Trapezoidal Rule implementation to numerically approximate the definite integral of a user-defined function
