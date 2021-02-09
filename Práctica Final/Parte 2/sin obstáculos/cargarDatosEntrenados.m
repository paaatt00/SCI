clear all;
close all;

% Entrenamiento sin obstáculos
load datos_entrenamiento_sin_obs training

% Entrenamiento angular
train_angular = training(:,[1,2,5,6,12]);
indices_angular = round(linspace(1,size(training,1),1500))
train_angular = train_angular(indices_angular,:)
train_angular(isinf(train_angular)) = 5.0
train_angular = double(train_angular)