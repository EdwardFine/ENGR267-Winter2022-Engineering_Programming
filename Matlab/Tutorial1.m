%% Tutorial 1
% by Edward Fine
close all;
%% Basic MATLAB matrix operations
% This section show basic matlab operations

A = [1 2 3; 4 5 6; 7 8 9]

a = A(2,:)
b = A(:,3)
c = A(1,1:3)

%% Basic Plotting
% Introduction to the plot command

t = 0:0.1:4*pi;
y = cos(t);
figure('Color', [1 1 1]);
plot(y)

%% Basic Functions
% Introduction to basic MATLAB functions

size(A)
size(b)
length(c)
who
whos

%% Basic Statistics Functions
% Introduction to statistics functions

ma = max(A)
mi = min(A)
u = mean(y)
m = median(y)

x = randn(1000, 1);
figure('Color', [1 1 1]);
plot(x)

figure('Color', [1 1 1]);
histogram(x)

mean(x)
std(x)

