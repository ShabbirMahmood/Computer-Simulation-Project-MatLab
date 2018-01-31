% Assignment-3.2 Mass Spring Damper System
clear all;
clc;
% Constants
c = 1;          % Damping Constants
m = 0;          % Mass
k = 2;          % Spring Constant
F = 1;          % Force 

% Inputs
h = 0.1;        % Step Size
t_final = 100;  % Final Time
N = t_final/h;  % No. of Steps

% Initial Condition
t(1) = 0;
x(1) = 2;
v(1) = 0;

% Updating Position
for i = 1:N-1
    t(i+1) = t(i) + h;
    x(i+1) = x(i) + h*(v(i));
    v(i+1) = v(i) + h*((-k/m)*x(i)) + h*((-c/m)*v(i)) + (1/m)*F;
end

plot(t,x);
xlabel('Time');
ylabel('Position');
title('Mass Spring Damper System');

