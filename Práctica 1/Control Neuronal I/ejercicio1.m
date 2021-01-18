<clc; clear all;

% EJERCICIO 1

P = [0.1 0.7 0.8 0.8 1.0 0.3 0.0 -0.3 -0.5 -1.5 0.0; 
     1.2 1.8 1.6 0.6 0.8 0.5 0.2 0.8 -1.5 -1.3 -1.5];
T = [1 1 1 0 0 1 1 1 0 0 1;
     0 0 0 0 0 1 1 1 1 1 1];

net = newp(P, T);
net = train(net, P, T);

Y = sim(net, P)

plotpv(P, T);
plotpc(net.iw{1, 1}, net.b{1});