Ts = 100e-3;
x_0 = 0;
y_0 = 0;
th_0 = 0;

% Creación de la gráfica
figure(1);
title ("Comparación de Trayectorias");
hold on;
grid on;
% Simulación trayectoria a seguir
sim('Trajectory_generator.slx');
plot(x_out.signals.values, y_out.signals.values)
% Simulación trayectoria realizada
sim('SeguimientoTrayectorias.slx');
plot(salida_x.signals.values, salida_y.signals.values)
legend('Trayectoria a seguir','Trayectoria realizada');