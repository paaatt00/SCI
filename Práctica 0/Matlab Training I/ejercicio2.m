clc; clear all;

% EJERCICIO 2

% Apartado 1: Generar una matriz cuadrada y aleatoria de tamaño n
tam = input('Indique el tamaño de la matriz: ');
matrizCuadrada = rand(tam);
                            
% Apartado 2: Calcular y presentar por pantalla
    % a) Matriz generada
disp('******** Apartado A ********');
disp(matrizCuadrada);
disp('-----------------------------');

    % b) Segunda matriz formada por columnas impares la de matriz inicial
disp('******** Apartado B ********');
matrizImpares = matrizCuadrada(:,1:2:end);
disp(matrizImpares);
disp('-----------------------------');

    % c) El valor de los elementos de la diagonal de la matriz generada
disp('******** Apartado C ********');
matrizDiagonal = diag(matrizCuadrada);
disp(matrizDiagonal);
disp('-----------------------------');

    % d) Valor máx, mín, med y var de cada fila, representados gráficamente
disp('******** Apartado D ********');

disp('Valores máximos');
vectorMaximos = max(matrizCuadrada(:,1:end));
disp(vectorMaximos);

disp('Valores mínimos');
vectorMinimos = min(matrizCuadrada(:,1:end));
disp(vectorMinimos);

disp('Valores medios');
vectorMedios = mean(matrizCuadrada(:,1:end));
disp(vectorMedios);

disp('Varianza');
vectorVarianzas = var(matrizCuadrada(:,1:end));
disp(vectorVarianzas);

plot(vectorMinimos);
hold on;
plot(vectorMaximos);
plot(vectorMedios);
plot(vectorVarianzas);
title('Ejercicio 2D - Mínimos, Máximos, Medios y Varianzas');
xlabel('Fila');
ylabel('Valor');
legend('Mínimos', 'Máximos', 'Medios', 'Varianzas');
hold off;