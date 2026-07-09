clear;
clc;

run('../scripts/SetupGeoFoundation.m')

q = 280;      % kPa
B = 5.0;      % m
z = 4.0;      % m

sigma = gf_BoussinesqStrip(q,B,z);

fprintf('\n');
fprintf('=====================================\n');
fprintf('Boussinesq Strip Footing Example\n');
fprintf('=====================================\n');
fprintf('Applied Pressure : %.2f kPa\n',q);
fprintf('Width            : %.2f m\n',B);
fprintf('Depth            : %.2f m\n',z);
fprintf('Vertical Stress  : %.3f kPa\n',sigma);
fprintf('=====================================\n');
