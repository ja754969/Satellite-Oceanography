clear;clc;
%% 2021/10/06
%% Satellite orbits and how they constrain remote sensing
%% The orbit period of Geostationary and Low near-polar 
GM = 3.98603*(10^14); % m^3/s^2 
% h = 35785; % heigth of geostationary orbit above the earth surface (kilometer)
h = 700; % heigth of near-polar orbit above the earth surface (kilometer)
R = 6378; % radius of earth (kilometer)
r = (R + h)*1000; % meter
orb_period = 2*pi*sqrt(r^3/GM); % seconds
orb_period_hour = orb_period/60/60; % hours