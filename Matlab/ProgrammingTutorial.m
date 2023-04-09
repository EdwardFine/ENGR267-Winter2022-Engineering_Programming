%% Introduction to Programming
% by Edward Fine
%
%% Common Elements to High-Level Programming Languages
% High-level: with abstraction higher than assambly
%
% * Variables, Data Types, Data Structures
% * Input/Output (Get data from keyboard, file, device: output to screen)
% * Mathematical & Logical Operators
% * Condictional Execution (if..elseif...elseif...else)
% * Repetition (Iteration) / Loops(For or while)
% * Functional Programming
% * Objects
% * Native and Specialized Libraries(Toolboxes)
% * GUIs

%% Variables
% A variable is a storage location paired with an associated symbolic 
% name (identifier) that contains some quantity of information (value)
% referred to as a value.
%
% Variables are used to store information to be referenced and manipulated
% in a computer program.
% They provied a method of labeling data with descriptive name
% (identifier).
%
% It is helpful to think of a variable as a conatiner in a program that 
% holds information, that is, a container in which a data value can be
% stored inside the computer's memory. Their purpose is to label and store
% data in memory. This data can then be used in a program and the stored
% value can be referenced using the variables's name.
%
% Variable Concepts
% 
% * Creating Variables
% * Data Types (e.g., single, double, char, logical)
% * Data Structure (e.g, scalars, chars, 1D/2D arrays, vector, matrix)
% * MATLAB constants (e.g,, pi, inf, i, j)
% * Built-In functions(Matlab) to work with variables (who, whos, clear)
%
clc

% Scalar
a1 =4

% 1D Array = Vector
a2 = [1 2 3 4 5]

% Character
a3 = 'a'

% Vector using Colon : operator
a4 = 1:5

% Transpose
a5 = a4'

% String (Vector 1D, 1 Row Matrix)
a6 = 'Edward'

% Accessing Elements
a7 = a6(2)
a8 = a6(1:3)

% Creating a Matrix
a9 = [1 2 3; 4 5 6; 8 9 10]

% Accessing Elements in Matrix
a10 = a9(1:2, end)

% Constants
a11 = pi
a12 = j
a13 = NaN
a14 = inf

% Data Types, Conversion of Data Tpes
a15 = single(a1)

% Special Variables & Functions
a16 = []
a17 = zeros(4,4)
a18 = ones(4, 4)
a19 = diag(1:4)

%Replace Variables, Segements of Variables
a20 = a19;
a20(end, :) = ones(1,4)
a20(:,end) = 1:4
a20(2:3, 2:3) = [1,2;3,4]

%Special Functions to Work with Variables
length(a2)
size(a2)
who
whos
% clear

%% Input/Output
% Input from keyboard, file device &
% Output to screen, file, or device
%
% Kye Functions and Concepts
%
% * Input
% * Disp
% * fprintf, fopen, fclose
% * format
% * load
% * save
%

% Input
x=5;
y=6.6;
name = 'Edward';
% x = input('Enter the value of X: ');
% y = input('Enter the value of Y: ');
% name = input('Enter your name ', 's');
z = x+y;

% Simple Screen Output
disp('The Sume of the variables is: ')
z

disp(['The sum of the variables is :', num2str(z)])

% Output to Screen (More powerful than disp)
fprintf('The sum of the variable is %g %s \n', z, name)

% Output to File
fid = fopen('myResults.txt', 'w');
fprintf(fid, 'The sum of the variable is %g %s \n', z, name)
fclose(fid);

% Format
format short % 7 digits
format long % 15 digits
format bank % xx.xx format
format short e % 4 digit scientific notation
format short

% Read Data from File
load handel
save('myData', 'x', 'y', 'z')

%% Mathematical & Logical Operators
% High-level programming languages (>assambly) all contaim operators:
% assignment operatorrs, arithmetic operators, relational operators
% (comparison, and logical operators.

% Arithmetic Scalar
a1=5+5
a2 = 5-5
a3 = 5*5
a4 = 5/5

% Arithmetic Vector (Element-by-Element)

a6 = 1:5
a7 = 1:5
a8 = a6+a7
a9 = a6-a7
a10 = a6.*a7
a11 = a6./a7
a12 = a6.^a7

% Arithmetic Matrix
a13 = a6*a7'
a14 = a6'*a7
a15 = ones(3,3)*ones(3,3)

% Relational (Comparison) Operators
a = rand(1,5)
b = rand(1,5)

x_r1 = a < b
x_r2 = a > b
x_r3 = a <= b
x_r4 = a >= b
x_r5 = a == b
x_r6 = a ~= b

% Logical Operators

a = [0 1 0 1]
b = [1 0 1 1]

z_and = a & b
z_or = a | b
z_not = ~a 

%% Conditional Execution
% Relational & logical operators are combined with an "if...else..."
% structure to selectively execute blocks of code by performing a basic
% conditional test that evaluated a given expression for a boolean value of
% true (1) or false (0)

% if statement

if 5>1
    disp('Yest, 5 is greater than 1')
    disp('Thanks for asking')
end

% If... else... statement

a = rand;
b = rand; 
if a<b
    disp('a is less than b')
    a
    b
else
    disp('a is greater than b')
    a
    b
end

% if...elseif...elseif...elseif...N....else

a = rand;
b = rand; 
if a<b
    disp('a is less than b')
    a
    b
elseif a>b
    disp('a is greater than b')
    a
    b
elseif a==b
    disp('a is qual to b')
    a
    b
else
    disp('Error')
end

%% Repetition / Iteration
% Repeated evaluation of a block of code (a set of statements) is
% accomplished by using "for loops" and "while loops"
%
% Key concepts
%
% * For Loops (determined number of repetition)
% * While Loops (undetermined number of repetitions)
% * Vectorization (avoid loops by using factor vector operations)

% For loop

fid = fopen('myResults1.txt', 'wt');
for k=1:10
    disp('Program entered the for loop');
    fprintf('For loop iteration %d \n', k);
    fprintf(fid, 'For loop iteration %d \n', k);
end
fclose(fid);


% While loop
k=1;
fid = fopen('myResults2.txt', 'wt');
while k<=10
    disp('Program entered the for loop');
    fprintf('While loop iteration %d \n', k);
    fprintf(fid, 'While loop iteration %d \n', k);
    k=k+1;
end
fclose(fid);

% While loop with unknown no of iterations
% k=1;
% k1=1;
% fid = fopen('myResults3.txt', 'wt');
% while k1~= 0
%     disp('Program entered the for loop');
%     fprintf('While loop iteration %d \n', k);
%     fprintf(fid, 'While loop iteration %d \n', k);
%     k1 = input('Do you want to stop? (Enter 0 to Stop:) ');
%     
%     k=k+1;
% end
% fclose(fid);

% For loops with noninterger increments
y=zeros(1,16);
k=1;
for x=0:pi/15:pi
    y(k)=cos(x);
    k=k+1;
end
y

% Vectorization
x=0:pi/15:pi;
y=cos(x)


%% User-Defined Function
% Functions are used to enclose a section of code that provides specific
% functionality to the program (subprograms). User-defined functions work
% just like built-in functions.
%
% Advantages of using functions include:
%
% * Addition specific functionality that can be re-used
% * Make the programs easier to understand andd maintain
% * Ability to divide the work of larger projects among programmers by
%  working on different functions with well defined interfaces.
%
% Key Concepts
%
% * Declaration of User Define Functions
% * Definition of User Define Functions
% * Variable Scope
% * Function Arguments (Input Parameters) & Passing Arguments by Value
% * Output Parameters

a = [1 2 3; 4 5 6; 7 8 9]
b = ones(3,3)

[sum, product] = addmult(a,b)







