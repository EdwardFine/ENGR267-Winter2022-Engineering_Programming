function x = chaos(x0, lambda, vectorLength);
% chaoes: generates a chaotic time series and graphs it in 3 dimmensions
%
% x = chaos(x0, lambda, vectorLength);
%
% x0 = Inicial value in the time series: 0<x0<1
% lambda = constant between 3.8 and 4
% vectorLength = length of the time series
%
% See also: rand, randn,
%
% Ver: 1.0 by Edward Fine


x0 = 0.5;
lambda = 3.8;
vectorLength = 1500;

x = zeros(vectorLength,1);
x(1) = x0;

for k=2:vectorLength
    x(k) = lambda*x(k-1)*(1-x(k-1));
end


T = 2;
x1 = x(1:end-2*T);
x2 = x(T+1:end-T);
x3 = x(2*T+1:end);

figure('Color', [1 1 1]);
h = plot3(x1,x2,x3);
xlabel('x(t)');
ylabel('x(t+T');
zlabel('x(t+2T)');