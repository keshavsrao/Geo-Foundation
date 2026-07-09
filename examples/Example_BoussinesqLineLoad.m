clear;
clc;

run('../scripts/SetupGeoFoundation.m')

q = 100;      % kN/m

x = 0;

z = 2;

sigma = gf_BoussinesqLineLoad(q,x,z);

fprintf('\n');
fprintf('Vertical Stress = %.4f kPa\n',sigma);
