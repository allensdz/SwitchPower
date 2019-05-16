clc
clear all
X = [0:0.01:100];
A =( X./((1 + X.^2).^0.5));
plot(X,A)
%hold on
grid on
M = 90 - atan(X);
plot(X,M)
grid on