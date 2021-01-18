clc; clear all;

% EJERCICIO 2

Ts=100e-3;
refx=rand;
refy=rand;

% Creación de la gráfica
figure(1);
title ("Comparación Caja Negra y Red Neuronal");
hold on;
grid on;
% Simulación caja negra
sim('PositionControl.slx');
plot(salida_x.data, salida_y.data);
% Simulación red neuronal
sim('PositionControlNet.slx');
plot(salida_x_redN.data, salida_y_redN.data);
legend('Caja Negra','Red Neuronal');

figure(2);
plot(E_theta);