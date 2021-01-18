clc; clear all;

% EJERCICIO 1

% Apartado 1: Creamos la matriz A y el vector V
A = [1 2; 3 4; 5 6; 7 8]
V = [14; 16; 18; 20]

% Apartado 2: Obtenemos una matriz B concatenando A y V
B = [A V]

% Apartado 3: Obtenemos un vector fila tras concatenar las filas de B
filasConcatenadas = [B(1,:) B(2,:) B(3,:) B(4,:)]

% Apartado 4: Obtenemos un vector columna tras concatenar las columnas de B
columnasConcatenadas = [B(:,1); B(:,2); B(:,3)]
