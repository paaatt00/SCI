clc; clear all;

% EJERCICIO 6

% ------------- Primer sistema -------------
% Apartado 1: Exprese el sistema de forma matricial en Matlab
A1 = [0 2 10 7; 
     2 7 7 1; 
     1 9 0 5; 
     4 0 0 6;
     2 8 4 1;
     10 5 0 3;
     2 6 4 0;
     1 1 9 3;
     6 4 8 2;
     0 3 0 9];
 
 b1 = [90;
      59;
      15;
      10
      80;
      17;
      93;
      51;
      41;
      76];
  
% Apartado 2
    % a) Obtener el número de condición de la matriz A respecto a la inversión
inv1 = pinv(A1);
numCond1 = cond(inv1);
disp("El número de condición de la matriz A1 respecto de la inversión es:");
disp(numCond1);

    % b) Resolver el sistema de ecuaciones para obtener la matriz x1 = [x1, x2, x3, x4]’.
x1 = linsolve(A1,b1);
disp("La matriz x1 es:");
disp(x1);

    % c) Añadir ruido a la matriz b, sumándole un vector aleatorio de media 0 y desviación 1, y resuelva el sistema de ecuaciones resultante.
    % d) Mostrar el resultado (con y sin ruido añadido) por pantalla.
tam1 = size(b1);
desv = 1;
prom = 0;
valoresAleatorios1 = tam1(1);
ruido1 = desv .* randn(valoresAleatorios1, 1) + prom;
sol1 = linsolve(A1, b1 + ruido1);
disp("La solución del sistema con el ruido añadido a la matriz b1 es:");
disp(sol1);


% ------------- Segundo sistema -------------
% Apartado 1: Exprese el sistema de forma matricial en Matlab
A2 = [0.110 0 1 0;
     0 3.260 0 1;
     0.425 0 1 0;
     0 3.574 0 1;
     0.739 0 1 0;
     0 3.888 0 1;
     1.054 0 1 0;
     0 4.202 0 1;
     1.368 0 1 0;
     0 4.516 0 1];
 
 b2 =[317;
     237;
     319;
     239;
     321;
     241;
     323;
     243;
     325;
     245];

% Apartado 2
    % a) Obtener el número de condición de la matriz A respecto a la inversión
inv2 = pinv(A2);
numCond2 = cond(inv2);
disp("El número de condición de la matriz A2 respecto de la inversión es:");
disp(numCond2);

    % b) Resolver el sistema de ecuaciones para obtener la matriz x2 = [x1, x2, x3, x4]’.
x2 = linsolve(A2,b2);
disp("La matriz x2 es:");
disp(x2);

    % c) Añadir ruido a la matriz b, sumándole un vector aleatorio de media 0 y desviación 1, y resuelva el sistema de ecuaciones resultante.
    % d) Mostrar el resultado (con y sin ruido añadido) por pantalla.
tam2 = size(b2);
desv = 1;
prom = 0;
valoresAleatorios2 = tam2(1);
ruido2 = desv .* randn(valoresAleatorios2, 1) + prom;
sol2 = linsolve(A2, b2 + ruido2);
disp("La solución del sistema con el ruido añadido a la matriz b2 es:");
disp(sol2);
