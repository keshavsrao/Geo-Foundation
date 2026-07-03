clear;
clc;

run('../scripts/SetupGeoFoundation.m')

q = 280;      % kPa

B = 5.0;      % m

z = 4.0;      % m

sigma = gf_BoussinesqStrip(q,B,z);

fprintf('Stress = %.3f kPa\n',sigma);
