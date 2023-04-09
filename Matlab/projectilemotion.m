function [range, max_height, max_height_x, h_pos] = ProjectileMotion(v0, theta0)
% ProjectileMotion calculates the horizontal range, maximum height,
% location of the maximum height, and displays a plot of the trajectory
% for a projectile with the initial velocity v0 and initial angle theta0.
%
%% Inputs: 
% v0 = initial velocity
% theta0 = initial angle
%
%% Outputs:
% range = horizontal distance
% max_height = the maximum y value
% max_height_x = where on the x axis the max height occurs
% h_pos = matrix of the x,y positions of the projectile over time.

g = 9.8; % Acceleration due to gravity
theta0 = theta0 * (pi/180); % converts degrees to radians.
vx=v0*cos(theta0);
vy=v0*sin(theta0);

% Calculate time of flight
t_flight = 2*vy/g;

% Calculate range
range = vx * t_flight;

% Calculate maximum height
max_height = vy^2 / (2*g);

% Calculate the location of the maximum height
max_height_x = vx*vy/g;

% Calculate the x and y positions over time
t = linspace(0,t_flight, 1000);
x_pos = vx*t;
y_pos = vy*t+(.5*-g*t.^2);

% Store x and y positions in h_pos matrix
h_pos = [x_pos, y_pos];

% Plot the trajectory
figure('Color', [1 1 1]);
plot(x_pos, y_pos);axis tight; box off;
ylim([0,50]);
xlim([0,50]);
xlabel('Horizontal Position (m)');
ylabel('Vertical Position (m)');
title('Projectile Trajectory');
end

