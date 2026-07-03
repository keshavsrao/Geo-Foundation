clear;
clc;

run('../scripts/SetupGeoFoundation.m')

load = gf_CreateLoad(...
    "UniformPressure",...
    280);

gf_ValidateLoad(load);

disp("Load validation successful.")
