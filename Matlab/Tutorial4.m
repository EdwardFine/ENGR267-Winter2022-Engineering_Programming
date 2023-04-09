%% Tutorial 4
% By Edward Fine

%% Chaos Example
% Chaotic Simulator
% Use the for loop to simulate a chaotic system defined by the following
% recursion.
% x(i) = l*x(i-1)(i-x(i-1))
% 3.5< l < 4.0
% 0 < x(0)< 1
%
% x = chaos( x0, lambda, vectorLength)



x0 = 0.5;
lambda = 3.8;
vectorLength = 1500;

x = zeros(vectorLength,1);
x(1) = x0;
for k=2:vectorLength
    x(k) = lambda*x(k-1)*(1-x(k-1));
end

%% Visualizing Charotic Time-Series
% 2D plots

figure('Color', [1 1 1]);
h = plot(x); box off;
xlabel('Sample Number');
ylabel('Chaotic Number');

figure('Color', [1 1 1]);
h = histogram(x);



%% Visualizing Chaotic Time-Series - Part 2
% 2D plots

T = 40;
x1 = x(1:end-T);
x2 = x(T+1:end);

figure('Color', [1 1 1]);
h = plot(x1,x2);
xlabel('x(t)');
ylabel('x(t+1)');

%% Visualizing Chaotic Time-Series - Part 3
% 3D plots

T = 2;
x1 = x(1:end-2*T);
x2 = x(T+1:end-T);
x3 = x(2*T+1:end);

figure('Color', [1 1 1]);
h = plot3(x1,x2,x3);
xlabel('x(t)');
ylabel('x(t+T');
zlabel('x(t+2T)');

%% Visualizing Chaotic Time-Series - Part 4
% 3D plots

T = 2;
x1 = x(1:end-2*T);
x2 = x(T+1:end-T);
x3 = x(2*T+1:end);

figure('Color', [1 1 1]);
for k=1:length(x1)
    h = plot3(x1(k),x2(k),x3(k)); hold on;
    set(h, 'Markersize', 18);
    xlabel('x(t)');
    ylabel('x(t+T)');
    zlabel('x(t+2T)');
    pause(0.001)
end;
