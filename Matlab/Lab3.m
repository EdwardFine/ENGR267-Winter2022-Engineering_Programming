%% Lab 3 
% By Edward Fine

%% Part 2 
% Write a script that uses a loop to execute the chaos function 30 times and
% saves all 30 instances on seperate text files.

for k=1:30
    temp = chaos(.5,3.9,1000);
    pause(.05);
    eval(sprintf('save chaos%d.txt -ascii',k));
end

%% Part 3
% Create a script that loads each of the .txt files saved in the previous
% exercise, plot the data and saves the figures.
    dir('chaos*.txt');
for k= 1:30
    x = load(sprintf('chaos%d.txt', k));
    figure('Color', [1 1 1]);
    h = plot(x); axis tight; box off;
    ylim([0 1]);
    pause(0.1);
    eval(sprintf('print -dtiff chaos%d', k));
end

%% ProjectileMotion demonstration
v0 = 10;
theta0=45;
[range, max_height, max_height_x, h_pos] = projectilemotion(v0,theta0);

v0 = 25;
theta0=75;
[range_2, max_height_2, max_height_x_2, h_pos_2] = projectilemotion(v0,theta0);