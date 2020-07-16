clear;
clc;

%%Simulation Parameters
theta_initial = 60;
dtheta_initial = 0;
A = [0 1 0 0 ; 0 0 0.981 0 ; 0 0 0 1; 0 0 9.81*1.1 0];
B = [0 ;1 ;0 ;1];
p = [-2 -5 -6 -10];
k = place(A,B,p)
%Run Simulation
sim('pole_placement.slx');
% % To save video as animation
% fps = 60; speedRatio = 2;
% videoName = 'pole_placement';
% smwritevideo('pole_placement',videoName,...
% 'PlaybackSpeedRatio',speedRatio,'FrameRate',fps);


