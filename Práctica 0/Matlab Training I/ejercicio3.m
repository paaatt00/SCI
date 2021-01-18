clc; clear all;

% EJERCICIO 3

% Apartado 1: Solicitar las dimensiones por teclado
% Apartado 2: Generar las matrices A y B
% Apartado 3: Introducir 'r' por teclado para generar los datos de manera aleatoria
x = input("Introduce las filas y columnas para la matriz A en formato [filas columnas]: ");
A = IntroducirMatriz(x);

y = input("Introduce las filas y columnas para la matriz B en formato [filas columnas]: ");
B = IntroducirMatriz(y);

% Apartado 4: Calcular y mostrar por pantalla las operaciones
OperacionesMatriz(A,B);
