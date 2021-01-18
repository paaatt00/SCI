clear all; clc;

%Tiempo de muestreo
Ts = 100e-3
% Referencia x-y de posicion
refx = 9;
refy = 0;
obsx = 4;
obsy = 0;
% Ejecutar Simulacion
sim('EvitarObstaculo.slx')
% Mostrar
x = salida_x.signals.values;
y = salida_y.signals.values;
figure;
hold on;
tray_original = plot(x,y);
tray_obs = plot(obsx, obsy, 'x');
grid on;
hold off; 
legend([tray_original tray_obs], {'Trayectoria', 'Obstáculo'});
title('Trayectoria del robot');