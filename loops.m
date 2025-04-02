%display 1 to 10 using for loop
for i=1:10
    disp(i)
end

%display 1 to 15 odd number
for variable=1:2:15
    disp(variable)
end

%write a for loop to calculate the sum of the numbers 1 to 10
sum = 0;
for i=1:10
    sum = sum + i;
end
disp("Summation: "+sum)

%write a factorial
factorial = 1;
for i=1:5
    factorial = factorial * i;
end
disp("Factorial: "+factorial)

%Join string to number
x=10;
disp(['The number is',num2str(x)])
disp("The number is: "+x)
fprintf("The number is: %d",x)
y=sprintf('The number is:%d',x);
disp(y);

x=input("Enter the number 01: ");
disp(['The number is: ',num2str(x)])

y=input("Enter your name: ",'s');
disp("Your name is "+y)

i=1;
while i<10
    disp(i)
    i=i+1;
end
