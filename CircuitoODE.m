clear; clc; close all

T  = [0 0.02];
X0 = [0; 0];

[t, x] = ode45(@Circuito, T, X0);

figure
plot(t, x(:,1), 'LineWidth', 1.2); grid on
title('Vo(t)')
