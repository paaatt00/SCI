clc; clear all;

% EJERCICIO 2

Ts=100e-3;
N=20;
E_d_vec=[];
E_theta_vec=[];
V_vec=[];
W_vec=[];
for i=1:N
    i
    refx=(rand-rand)*10;
    refy=(rand-rand)*10;
    sim('PositionControl.slx');
    E_d_vec=[E_d_vec;E_d.data];
    E_theta_vec=[E_theta_vec;E_theta.data];
    V_vec=[V_vec;V.data];
    W_vec=[W_vec;W.data];
end
inputs=[E_d_vec'; E_theta_vec'];
outputs=[V_vec'; W_vec'];

hiddenLayerSize = 12;
net = fitnet(hiddenLayerSize);
net.divideParam.trainRatio = 80/100;
net.divideParam.valRatio = 10/100;
net.divideParam.testRatio = 10/100;
net.trainParam.epochs = 100000;
net = train(net, inputs, outputs);