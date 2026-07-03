clear;
clc;
close all;

run('../scripts/SetupGeoFoundation.m')

P = 1000;

r = 0;

zmax = 10;

dz = 0.25;

[z,sigma] = gf_StressProfile(P,r,zmax,dz);

plot(sigma,z,'LineWidth',2)

set(gca,'YDir','reverse')

xlabel('Vertical Stress (kPa)')

ylabel('Depth (m)')

title('Boussinesq Stress Profile')

grid on
