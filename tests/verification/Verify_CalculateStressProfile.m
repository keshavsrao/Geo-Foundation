clear;
clc;

run('../../scripts/SetupGeoFoundation.m')

footing = gf_CreateFooting("Strip",5,1,4);
load = gf_CreateLoad("UniformPressure",280);

layer = gf_CreateLayer("Dummy",0,30,20,30000,0.30);
profile = gf_CreateProfile(layer);

stress = gf_CalculateStressProfile(profile,footing,load,20,1);

disp(stress)
