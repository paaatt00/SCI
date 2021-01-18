clc; clear all;

% EJERCICIO 1

% Apartado 1: obtener transformada z y representar gráficamente las señales de origen y transformadas.
syms k;
f1 = 2 + 5*k + k^2;
transF1 = ztrans(f1);

figure('Name','Ejercicio 1 - Apartados 1 y 2','NumberTitle','off');
hold on;

subplot(2, 2, 1);
fplot(f1, 'r');
title('Apartado 1 - Origen');

subplot(2, 2, 2);
fplot(transF1, 'r');
title('Apartado 1 - Transformada');

% Apartado 2: obtener transformada z y representar gráficamente las señales de origen y transformadas.
syms a;
f2 = sin(k) * exp(-2*k); % Establecemos el valor de a = 2 para poder realizar el fplot
transF2 = ztrans(f2);

subplot(2, 2, 3);
fplot(f2);
title('Apartado 2 - Origen');

subplot(2, 2, 4);
fplot(transF2);
title('Apartado 2 - Transformada');

hold off;