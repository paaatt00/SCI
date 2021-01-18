clc; clear all;

% EJERCICIO 2

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% APROXIMACIÓN DE FUNCIONES 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% DEFINICIÓN DE LOS VECTORES DE ENTRADA-SALIDA 
% ============================================
t = -3:.1:3; % eje de tiempo
F = sinc(t)+.001*randn(size(t)); % función que se desea aproximar

plot(t,F,'+');
title('Vectores de entrenamiento');
xlabel('Vector de entrada P');
ylabel('Vector Target T');

% DISEÑO DE LA RED 
% ==================
hiddenLayerSize = 5; % número de neuronas de la capa oculta

% MÉTODOS DE ENTRENAMIENTO UTILIZADOS
%   1. trainrp
%   2. trainlm
%   3. trainbr
%   4. traingd

net = fitnet(hiddenLayerSize,'trainrp');

%Dividir los datos
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
net = train(net,t,F);
Y=net(t);

plot(t,F,'+');
hold on;
plot(t,Y,'-r');
hold off;

title('Vectores de entrenamiento'); 
xlabel('Vector de entrada P'); 
ylabel('Vector Target T');