clear;
clc;

run('../scripts/SetupGeoFoundation.m')

P = 1000;      % kN

r = 1.0;       % m

z = 2.0;       % m

sigma = gf_BoussinesqPointLoad(P,r,z);

fprintf('Vertical Stress = %.3f kPa\n',sigma);
