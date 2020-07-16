clc;
clear;

%%Simulation Parameters
theta_initial = 180
dtheta_initial = -50;
A = [0 1 0 0 ; 0 0 0.981 0 ; 0 0 0 1; 0 0 9.81*1.1 0];
B = [0 ;1 ;0 ;1];
% p = [-2 -5 -6 -10];
% k = place(A,B,p)
Q = [40 0 0 0 ; 0 80 0 0 ; 0 0 250 0 ; 0 0 0 200];
R = [1];
k = lqr(A,B,Q,R)
% Run Simulation
modelName = 'cpole';
sim(modelName);
% % To save video as animation
% fps = 60; speedRatio = 2;
% videoName = 'energy_shaping';
% smwritevideo(modelName,videoName,...
% 'PlaybackSpeedRatio',speedRatio,'FrameRate',fps);
