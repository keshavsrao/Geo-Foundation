clear;
clc;

run('../scripts/SetupGeoFoundation.m')

P = 1000;     % kN
r = 1.5;      % m
z = 3.0;      % m

sigma = gf_BoussinesqPointLoad(P,r,z);

fprintf('\n');
fprintf('Vertical Stress = %.4f kPa\n',sigma);
