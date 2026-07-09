clear;
clc;

run('../../scripts/SetupGeoFoundation.m')

layer1 = gf_CreateLayer("Clay",0,5,18,20000,0.30);

profile = gf_CreateProfile(layer1);

footing = gf_CreateFooting("Strip",5,1,4);

load = gf_CreateLoad("UniformPressure",100);

stress = gf_CalculateStressProfile(...
    profile,...
    footing,...
    load,...
    5,...
    0.10);

layerStress = gf_LayerStressStrip(profile,stress);

disp(layerStress.layer(1).avgStress)
