%  Purpose : Control Desgin
%  Made by: Faisal Aleyeoni & Abdulaziz Alshehri
%  $ Version : 
%  $ Developed Date : 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% The longitudinal equations of motion for the 
% McDonnell Douglas F-4C Phantom aircraft were obtained from Heffley and Jewell (1972). 
% At the chosen flight condition the weight is 38,925 lb and the aircraft is flying at Mach 1.1 at sea level. 
% ref "Flight Dynamics Pronciples, Michael V. Cook" Example 11.6
%
%
%
% You can find your own State-Space/Transfer Function by following this
% MATLAB Example:
% mathworks.com/help/simulink/slref/airframe-trim-and-linearize.html
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
close all
clc

format bank

%% General Data
% State Space Model
% x_dot = Ax + Bu
% y     = Cx + Du

% States:  x = [w; q]        : [Vertical Velocity; Pitch Rate]
% Inputs:  u = [delta]       : [Elevevator Deflection]
% Outputs: y = [w; q]        : [Vertical Velocity; Pitch Rate]

% A Matrix
A = [-2.10   375
     -0.160 -0.02];
% B Matrix
B = [ 77
      61];
% C Matrix
C = [1 0
     0 1];
% D Matrix
D = [ 0
      0];

% Feedback Gain
Kq = 0.0; %#ok<NASGU>

% Initial Condition
IC = [0 deg2rad(30)]; %#ok<NASGU>

%% Stability Augmentation System
% Find Gain
IC = [0 deg2rad(30)];
simOut = sim('ControllerDesignModel_2023a.slx');

rlocus(simOut.openLoop.values)
[~, z] = damp(simOut.openLoop.values);
disp(strcat("----------------    Damping = ", num2str(z(1)), '    ----------------'));

%% Check new Damping
Kq = 0.17;
IC = [0 deg2rad(30)];
simOut = sim('ControllerDesignModel_2023a.slx');

rlocus(simOut.SAS.values)
[~, z] = damp(simOut.SAS.values);
disp(strcat("----------------    Damping = ", num2str(z(1)), '    ----------------'));
