clear all;
close all;

% Entrenamiento con obstáculos
load datos_entrenamiento_con_obs training

% Entrenamiento angular
train_angular = training(:,[1,3,4,6,12]);
indices_angular = round(linspace(1,size(training,1),3000))
train_angular = train_angular(indices_angular,:)
train_angular(isinf(train_angular)) = 5.0
train_angular = double(train_angular)
train_angular = unique(train_angular(:,:), 'rows')