clc; clear all;

% EJERCICIO 5

[X,Y] = meshgrid(-5:0.25:5);
Z = Y * sin(pi * (X/10)) + 5 * cos((X^2 + Y^2)/8) + cos(X + Y) * cos (3 * X -Y);

% Representacion grafica en 3D 
figure('Name','Representacion grafica en 3D','NumberTitle','off');
hold on

% Dibujar en la parte superior y centrada la gráfica de la superficie
subplot(2,1,1)
surf(X,Y,Z)
xlabel('x')
ylabel('y')
title('Surf')

% Dibujar en la parte inferior izquierda la gráfica de la superficie en forma de malla 
subplot(2,2,3)
mesh(X,Y,Z)
xlabel('x')
ylabel('y')
title('Mesh')

% Dibujar en la parte inferior derecha la gráfica del contorno
subplot(2,2,4)
contourf(X,Y,Z)
colorbar % para añadir la barra de color al contorno
xlabel('x')
ylabel('y')
title('Contourf')
hold off

