%Row vector
A=[1 2 3];
disp(A);

%column vector
B=[1; 2; 3];

%size of matrix
size(A)

%number of elements of the matrix
numel(A)

%All elements Summation
sum(sum(A))

%display elements of row
sum(A,1)

%minimum elements
min(A)

%Maximum elements
max(A)

%one minimum elements
min(min(A))

C=[1 2 3;4 5 6;7 8 9;];
disp(C);

%Display the one of element
C(4)

%display the one of element in the second row
C(2,1)

%display the first row all the element
C(1,:)

%Display second column all the element
C(:,2)

%Display the first row last column
C(1,end)

%Display last column second row
C(end,2)

%multiplication
D=[2 4 6;5 2 1;3 2 6];
E=[1 2 4;2 3 1;5 2 1];

D.*E

%display the Zero matrix
F=zeros(2,3)


G=[D;E]

%find the odd and even number
if(mod(4,2)==1)
    disp('The number is odd')
else
    disp('The number is even')
end
