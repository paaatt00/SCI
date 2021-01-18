clc; clear all;

% EJERCICIO 4

tiemposDeterminante = zeros(1, 25); % Array donde meto los tiempos de hacer los DET
tiemposRango = zeros(1, 25); % Array donde meto los tiempos de hacer los RANGOS

for (i=1:1:25)
    % Apartado 1: Crear una matriz de valores aleatorios con dimensiones ixi
    matriz = randn(i); 
    
    % Apartado 2: Obtener el cálculo de tiempo de cada operación por separado
    tic
    det(matriz);
    tiempoDet = toc;
    tiemposDeterminante(:,i) = tiempoDet;
    
    tic
    rank(matriz);
    tiempoRank = toc;
    tiemposRango(:,i) = tiempoRank;
end

% Apartado 3: Representar gráficamente los cálculos de rango y determinante
% Apartado 4: Añadir etiquetas a los ejes y una leyenda que represente cada línea

plot(tiemposDeterminante);
hold on;
plot(tiemposRango);
title('Ejercicio 4C - Tiempos de procesamiento Rango y Determinante');
xlabel('Dimensión de la matriz ixi');
ylabel('Tiempo');
legend('Determinante', 'Rango');
hold off;