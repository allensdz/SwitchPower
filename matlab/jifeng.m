clc 
clear all
x = -500:1:500;
y = x.*(500 - abs(x))/500;
plot(x,y);
hold on;
plot(x,x)
grid on;