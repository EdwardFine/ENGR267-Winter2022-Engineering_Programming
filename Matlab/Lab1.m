%% Lab 1
% By Edward Fine

%% Part 1/2- Use of functions
% Use the function help or the on-line help in combination with MATLAB/Octave to familiarize yourself
% with the following MATLAB/Octave functions: clear, clc, who, demo, ones, zeros, eye, diag, input,
% pause, disp, fprintf, load, save, format, plot, xlabel, ylabel, title, length, size, mean, median,
% std, max, min, sum, abs, sqrt, exp, cos, sin, roots, sort, hist, any, find, all, diff.
%
% Write a MATLAB script that makes use of all the functions listed above (note: the script does not need
% to do anything useful).
clc
clear x
demo 'matlab'
format short 
x=1:.1:10;
length(x)
size(x)
z = input('Enter the value of Z to get multiplied by 10: ');
z= z*10;
disp('z now equals')
z

mean = mean(x)
median = median(x)
abs = abs(z)
sum = sum(x,z)
cos = cos(z)
sin = sin(z)
sqrt = sqrt(z)
exp = (z)
roots= roots(z)
std = std(z)
max = max(x)
min = min(x)
sort = sort(x)
any = any(x,1)
find = find(x<5)
all = all(x)
diff = diff(x)


figure('Color', [1 1 1]);
h = plot(x);
xlabel('X');
ylabel('Y');
title('X graph');
axis tight;
pause(.5);
save lab1plot.tif h;

figure('Color', [1 1 1]);
histogram(x);
axis tight;
who
a1 = zeros(4,4)
a2 = ones(4, 4)
a3 = diag(1:4)
e = eye(5,5)

fid = fopen('lab1.txt','w');
fprintf(fid,'%6.2f  %12.8f\n',x);
fclose(fid);

x2 =load('handel.mat', 'y');

%% Part 3- Matrixes
%
% Write the MATLAB code to construct the following matrices using the functions diag, ones, zeros, eye,
% the colon operator ":", and the transpose operator.
% Note: Matrix A must be generated using only three lines of code and only using the function diag, the
% colon operator, and the transpose operator. Matrix M must be generated using only one line of code and
% using only the functions eye, zeros, and ones

 A = diag(1:10); A(:,1) = 1:10; A(1,:) = 1:10
 M = [2*eye(2), zeros(2,3);3*ones(2,3),4*ones(2,2)]

 %% Part 4 - Factorials
 % Compute a list of the first 10 factorials (1!, 2!, . . . , 10!) using the function cumprod. The output should
% look like the following and be computed using a single line of MATLAB code.
 x = [[1:10]', cumprod([1:10])']