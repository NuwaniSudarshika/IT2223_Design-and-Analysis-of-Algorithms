%using the 'strcat' join the variable
str1 = 'apple';
str2 = 'banana';
result = strcat(str1,str2);
disp(result)

%using the 'strjoin' join the variable
x={'hello','world','sri'};
result2 = strcat(x{:});
disp(result2)

result3 = strjoin(x,':');
disp(result3)

%using the 'strcmp' compare the variable
str3 = 'age';
str4 = 'year';

strcmp(str3,str4)

%using the 'strfind' find the word
stri1 = 'The cat sat on the mat';
indic = strfind(stri1,'cat');

%using the 'strrep' change the word in the sentence
stri1 = 'The cat sat on the mat';
old='cat';
new='dog';
strrep(stri1,old,new)

%slipt the string using comma
inputstring = 'apple,banana,orange,grapes';
substring = strsplit(inputstring,',');

%get the name lowercase and uppercase
st1='apPLE';
lower(st1)
upper(st1)

%using the 'strtrim remove whitespace infron and behind the space
strtrim(' hello world ');

%get the marks from the user and print the grade
%marks>=90 A+
%marks>=80 A
%marks>=70 B
%marks>=60 C
%marks>=50 D
%else F

x=input("Enter the marks: ");
if(x>100)
    disp("not a valid marks")
elseif(x>=90)
    disp('A+')
elseif(x>=80)
    disp('A')
elseif(x>=70)
    disp('B')
elseif(x>=60)
    disp('C')
elseif(x>=50)
    disp('D')
else
    disp('F')
end

%get three numbers from the user and find the large number
x1=input("Enter number 01: ");
x2=input("Enter number 02: ");
x3=input("Enter number 03: ");

if(x1>x2 && x1>x3)
    disp("Large number: "+x1)
elseif(x2>x1 && x2>x3)
    disp("Large number: "+x2)
else
    disp("Large number: "+x3)
end

%get the character from the user and check the vowe or consonant
y=input("Enter the charcter: ",'s');
if(y=='a'||y=='e'||y=='i'||y=='o'||y=='u')
    disp("Vowel letter")
else
    disp("Consonant letter")
end