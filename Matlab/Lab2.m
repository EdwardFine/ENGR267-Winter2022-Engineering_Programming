%% Lab 2 
% by Edward Fine

%% Part 2-functions and plots
% Create plots of y(x) = x, y(x) = x2, y(x) = x3, y(x) = √(x), y(x) = ex, and y(x) = log(x).
x = 0:0.1:10;
y1 = x;
y2 = x.^2;
y3 = x.^3;
y4 = sqrt(x);
y5 = exp(x);
y6 = log(x);

figure('Color', [1 1 1]);
subplot(3,2,1);
h = plot(x,y1);
axis tight;
title('Y=X');
subplot(3,2,2);
h = plot(x,y2);
axis tight;
title('Y=X^2');
subplot(3,2,3);
h = plot(x,y3);
axis tight;
title('Y=X^3');
subplot(3,2,4);
h = plot(x,y4);
axis tight;
title('Y=sqrt(X)');
subplot(3,2,5);
h = plot(x,y5);
axis tight;
title('Y=e^X');
subplot(3,2,6);
h = plot(x,y6);
axis tight;
title('Y=log(X)');

%% Part 3/4 - Frequency
% Generate and plot the following signal,
% x(t) = 10 cos(2π5t) + 0.5 cos(2π60t).
% Use a sampling frequency fs = 12 times the maximum signal frequency. The sampling frequency is the
% inverse of the sampling period, fs = 1
% Ts. Display the signal for 1 second and use the print command to
% generate a tiff figure. Use the hold on command and plot the samples of x(t) in the same plot (i.e. as
% dots without linear interpolation). Explore the effect of reducing the sampling frequency fs to fs = 2fm,
% where fm corresponds to the maximum signal frequency.
%
% Create 6 subplots showing x(t) with different properties changed using the set function (i.e. change the
% color, line width, markersize, etc). Explore the commands grid on, grid off, axis tight. Plot one of the
% subplots using the stem function instead of plot

figure('Color', [1 1 1]);
fmax = 60;
fs = 12*fmax;
Ts = 1/fs;
n  = 0:fs;
t  = n*Ts;
xs = 10*cos(2*pi*5*t) + 0.5*cos(2*pi*60*t);
h = plot(t,xs);

figure('Color', [1 1 1]);
subplot(2,3,1)
h = plot(t ,xs);
set(h,'Color', [1 0 0]);
subplot(2,3,2);
h = plot(t,xs);
set(h,'Linewidth', 2);
subplot(2,3,3);
h = plot(t,xs);
grid on; axis tight; box off;
subplot(2,3,4);
h = plot(t,xs, '.');
subplot(2,3,5);
set(h,'MarkerSize', .5);
h = plot(t,xs,'.');
set(h, 'Color', [0 1 0]);
subplot(2,3,6);
h = stem(t,xs);
set(h,'Linewidth',.5);

%% Part 5 - Complex function
%
%Plot the function
%f(x) = 1/((x −3)2 + 0.01) + 1/((x −0.9)2 + 0.04) −6

x = -10:0.01:10;
f = 1./((x-3).^2 + 0.01) + 1./((x - 0.9).^2 + 0.04) - 6;
figure('Color', [1 1 1])
h = plot(x,f);

%% Part 6/7- Ohm's law and plots
%
% Use the subplot function to create a figure containing four subplots (2x2). Plot the i-v characteristic of a
% 1KΩ resistor in the first plot, y(t) = x2(t) in the second plot, |x(t)| in the third plot, and y(t) = e−5tx(t)
% on the fourth plot (Note: x(t) was previously defined in Problem 3).
% Use the get, set, and gca to change the properties in the previous figures such as the line width, marker
% size, plot colors, and axis properties.

R = 1000;
i = 0:0.1:1;
v = i*R;
figure('Color', [1 1 1]);

subplot(2,2,1)
plot(i,v)
xlabel('Current (Amps)');
ylabel('Voltage (V)');
axis tight;

subplot(2,2,2)
y1 = xs.^2;
plot(t,xs,t,y1);
xlabel('Time (s)');
ylabel('Signal');
axis tight;

subplot(2,2,3);
y2 = abs(xs);
plot(t,xs,t,y2);
xlabel('Time (s)');
ylabel('Signal');
axis tight;

subplot(2,2,4);
y3 = exp(-5*t).*xs;
h = plot(t,y3);
set(h,'Linewidth', 2);
set(h,'Color', [1 0.5 0.5]);
axis tight;

%% Part 8 - Normal random numbers
%
% Generate 1000 random numbers with a normal distribution using randn. Plot a the time series and a
% histogram (hist) using a 1x2 subplot.

x = randn(1,1000);
figure('Color',[1 1 1]);
subplot(1,2,1);
plot(x);
subplot(1,2,2);
histogram(x);

%% Part 9 - Uniform random numbers
%
% Generate 1000 random numbers with a uniform distribution using rand. Plot a the time series and a
% histogram using a 1x2 subplot.

x = rand(1,1000);
figure('Color', [1 1 1])
subplot(1,2,1);
plot(x);
subplot(1,2,2);
histogram(x);

%% Part 10 - Verify Uniform Distribution
%
% Generate 10 realizations of a 1000 random numbers with a uniform distribution (i.e. randn(10,1000)).
% Verify that each realization has a uniform distribution. Add the ten realizations using the function sum
% and observe the distribution of the result.

x = rand(10,1000);
y = sum(x);
figure('Color', [1 1 1]);
histogram(y);

%% Part 11- Import data
%
%
T = readtable('API_EN.ATM.CO2E.PC_DS2_en_csv_v2_4770565.csv');
USA = table2array(T(253, 35:64));
years = 1990:2019;
figure('Color', [1 1 1]);
plot(years,USA, '-');

%% Section 2- 3D Graphics
%
%% Part 1/2 - Plot the function.
%
% Plot the following function: f(x,y) = (x3 + 3y2)e1−x2−y2
% Both axis should go from -2.5 to 2.5. Use the functions meshgrid and mesh. Use the function view and rotate3d to change the viewpoint.

figure('Color',[1 1 1]); 
[X,Y] = meshgrid(-2.5:.1:2.5, -2.5:.1:2.5);
Z = (X.^3 + 3.*Y.^2).* exp(1-X.^2 - Y.^2);
mesh(X,Y,Z);
view(45,45);
rotate3d;

%% Part 3 - Contour
%
% Generate a contour plot of f(x,y) using countour.

figure('Color',[1 1 1]); 
[X,Y] = meshgrid(-2.5:.1:2.5, -2.5:.1:2.5);
Z = (X.^3 + 3.*Y.^2).* exp(1-X.^2 - Y.^2);
contour(X,Y,Z);
view(45,45)

%% Part 4/5 - Plots using other functions
%
% Generate plots of f(x,y) using surf, meshc, meshz, and waterfall.
% Generate plots of f(x,y) using surfl with a colorbar colorbar for different color-maps (e.g. colormap
% bone.)

figure('Color',[1 1 1]); 
[X,Y] = meshgrid(-2.5:.1:2.5, -2.5:.1:2.5);
Z = (X.^3 + 3.*Y.^2).* exp(1-X.^2 - Y.^2);
surf(X,Y,Z);
meshc(X,Y,Z);
surfl(X,Y,Z); 
colorbar
view(45,45)

%% Part 6- logo
%
% Issue the command logo to generate a figure with the MATLAB logo. View the Logo m-file and experiment
% with the visualization commands in MATLAB. Try cameramenu.

logo
cameramenu

%% Section 3 - Solving Math Problems (Calculus)
%
%% Part 1 - Euler's Equation
%
% Use MATLAB/Octave to very Euler s equation e^iπ + 1 = 0

Euler= exp(i*pi)+1;

%% Part 2
%
% Verify the generalized Euler’s formula for several values of θ 
% (Optional/Extra Credit: Illustrate this equation with a plot): e^jθ = cos(θ) + j sin(θ)
angle = 0:0.1:2*pi;
plot(imag(exp(i*angle)))

%% Part 3
%
% Compute the following integrals using the sum function and compare the
% result to the analytical solutions∫ 1:0(x)dx, ∫1:0 (x^2)dx, 
% ∫ 1:0(x^3)dx, ∫ 1:0 (e^x)dx.

dx = 0.00001;
x  = 0:dx:1;

y1  = x;
I1 = sum(y1.*dx)

y2  = x.^2;
I2 = sum(y1.*dx)

y3  = x.^3;
I3 = sum(y1.*dx)

y4  = exp(x);
I4 = sum(y1.*dx)

%% Part 4
%
%Compute the following integral using the sum function and compare the result to the analytical solution
% ∫ 1:0(1√x2 + 2) dx and plot
dx = 0.00001;
x  = 0:dx:1;
y  = 1./sqrt(x.^2+2);
I = sum(y.*dx)
plot(x,y)

%% Part 5
%
% Generate a sinusoid for one period and compute the following integral using the sum function
% 1/2π∫ 2π:0(I(|sin(x)|> 0.9))dx
% where I is the indicator function (i.e. which is one whenever the argument is true and zero otherwise).
% Use the functions abs and find to solve this problem.
 
dx = 0.0001; 
x = 0:dx:2*pi; 
f = abs(sin(x)); 
I = find(f>0.9); 
length(I)*dx/(2*pi)