%% Tutorial 3
% By Edward Fine

%% Using the sum function to approximate integrals
% Definite integrals

dx = 0.001;
x = 0:dx:1;
y = x;

A1 = sum(y*dx)
y = x.^2;
A2 = sum(y*dx)

%% Plot of Euler Equation
% Euler

figure('Color', [1 1 1]);
angle = 0:0.1:4*2*pi;
x = exp(i*angle);
subplot(3, 1,1);
h = plot(x);
ylabel('Imag(x)');
xlabel('Real(x)')
subplot(3,1,2);
h = plot(real(x));
ylabel('Real(x)');
axis tight;
subplot(3,1,3)
h = plot(imag(x));
ylabel('Imag(x)');
xlabel('Angle');
axis tight;

figure('Color', [1 1 1]);
h = (plot3(angle, real(x), imag(x)));
xlabel('Angle');
ylabel('Real(x)');
zlabel('Imag(x)');

%% Introduction to For Loops
% Visusalization of the Euler equation
figure('Color', [1 1 1]);
for k=1:length(angle);
    h = plot3(angle(k), real(x(k)), imag(x(k)), '.');
    xlabel('Angle');
    ylabel('Real(x)');
    zlabel('Imag(x)');
    hold on;
    pause(0.001);
end;

%% For Loops Example 2
% 10 random plots

for k=1:10
figure('Color', [1 1 1]);
x = rand(10, 1);
plot(x, '-');
pause(0.5);
eval(sprintf('save rfile%d.txt -ascii',k));
eval(sprintf('print -dtiff myplot%d', k));
end;

%% While Loop Example
% Plot random numbers until one of the random numbers is greater than 0.95

x = rand;
while x<0.95
    figure('Color', [1 1 1]);
    x=rand(10,1);
    plot(x, '-');
    pause(0.5);
end

%% If-elseif-else Example
%

x = rand;
if x < 0.3
    disp('Low Number');
elseif x>0.5 && x<0.7 
    disp('Medium');
elseif x>0.7 && x<0.9
    disp('Medium-High');
else 
    disp('High');
end

%% Loading lots of files
% dir & introduction to structures

files = dir('rfile".txt');
for k=1:length(files)
    x1 = load(files(k).name);
    figure('Color', [1 1 1]);
    plot(x1);
    pause(1);
end


