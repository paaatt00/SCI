clc; clear all;

% EJERCICIO 4

% Carga de datos de ejemplo disponibles en la toolbox
%   simpleclass_dataset
%   cancer_dataset
[inputs,targets] = cancer_dataset;
% Creción de una red neuronal para el reconocimiento de patrones
hiddenLayerSize = 10;
net = patternnet(hiddenLayerSize);

% MÉTODOS DE ENTRENAMIENTO UTILIZADOS
%   1. trainrnp
%   2. trainbr
%   3. trainlm
%   4. trainbfg
net.trainFcn = 'trainrp';

% División del conjunto de datos para entrenamiento, validación y test
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
% Entrenamiento de la red
[net,tr] = train(net,inputs,targets);
% Prueba
outputs = net(inputs);
errors = gsubtract(targets,outputs);
performance = perform(net,targets,outputs);
% Visualización
view(net)