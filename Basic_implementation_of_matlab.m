x=10;
y=x+10;
y
A=[1 2 3 4; 4 3 2 1; 9,8,7,6; 2 1 3 4] % show a Matrix

 % to show specific number of matrix
A(3,:) % to show 3rd row all elements
A(:,4) % to show last column
A(2:3, 2:3) % to show specific part of matrix
A(3:4,3:4)
A(2,:) =[] %delete the 2nd row

E=[1 2 3 ; 4 3 2 ; 9,8,7]
B=[4,5,7; 3 2 7 ; 1 2 3 ]
C=[E,B] 
D=[E;B]

M= E + B %addition
N= E - B %subtruction
O= E * B %multiplication
P= E/B % division

S1= M+x  %scaler addition
S1= M-x  %scaler subtruction
S1= M*x  %scaler multiplication
S1= M/x  % scaler division

T1= M' %transpose of a matrix
det(M) %determinant of matix
inv(M) %inverse of matrix

n= [1,2,3;7,8,9;5,6,4]
t=n'
inv(n)

