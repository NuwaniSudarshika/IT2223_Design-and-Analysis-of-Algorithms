a = input('Enter the number01: ');
b = input('Enter the number02: ');
s = input('Enter the operator (+,-,*,/): ','s');

switch(s)
    case '+'
        disp("Summation: "+(a+b));
    case '-'
        disp("Abstraction: "+(a-b));
    case '*'
        disp("Summation: "+(a*b));
    case '/'
        disp("Division: "+(a/b))
    otherwise
        disp("Invalid Operator");
end