clc
clear all
close all

global T
T = 100;
t = 0:0.1:T;

% Resolviendo las ecuaciones diferenciales
[t, y] = ode45(@DP, [0 T], [0 (35*pi)/180 0 0]);

figure(1)
plot(t,y(:,1));
grid on
hold on
title("Posición");
xlabel("Tiempo");
ylabel("Radianes");
figure(2)
plot(t,y(:,3));
grid on
title("Velocidad");
xlabel("Tiempo");
ylabel("Radianes/segundos");
