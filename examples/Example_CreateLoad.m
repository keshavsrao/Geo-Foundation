clear;
clc;

run('../scripts/SetupGeoFoundation.m')

load = gf_CreateLoad(...
    "UniformPressure",...
    280);

disp(load)
