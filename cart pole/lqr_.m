clear;
clc;

%%Simulation Parameters
theta_initial = 60;
dtheta_initial = 0;
A = [0 1 0 0 ; 0 0 0.981 0 ; 0 0 0 1; 0 0 9.81*1.1 0]
B = [0 ;1 ;0 ;1]
Q = [10 0 0 0 ; 0 1 0 0 ; 0 0 50 0 ; 0 0 0 1]
R = [0.01]
k = lqr(A,B,Q,R)
%Run Simulations
% sim('lqr_sim.slx');
% To save video as animation
% fps = 60; speedRatio = 2;
% videoName = 'lqr_';
% smwritevideo('lqr_sim',videoName,...
% 'PlaybackSpeedRatio',speedRatio,'FrameRate',fps);
% 

