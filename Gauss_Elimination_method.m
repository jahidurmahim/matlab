% Take input
y = input('Enter the size of equation system n = ');
C = input('Enter the elements of matrix C: ');
b = input('Enter the elements of the matrix b: ');


% Check determinant
if det(C) == 0
    disp('The system is unsolvable because det(C) = 0')
else
    a=[C b];
end

% Gauss Elimination method
[m, n]=size(a);
for j = 1:m-1
    for z = 2:m
        if a(j, j) == 0
            t = a(j,:);
            a(j,:) = a(z,:);
            a(z,:) = t;
        end
    end
    for i = j+1:m
        a(i,:) = a(i,:) - a(j,:) * (a(i,j) / a(j,j));
    end
end

x = zeros(1,m);
for s = m:-1:1
    C = 0;
    for k = 2:m
        C = C + a(s,k) * x(k);
    end
    x(s) = (a(s,n) - C) / a(s,s);
end

% Display result
disp('Gauss Elimination method: ');
a
x'

% MATLAB implementation of Gauss Elimination method to solve a system of linear equations

