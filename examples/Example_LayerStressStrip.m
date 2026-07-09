clear;
clc;

run('../scripts/SetupGeoFoundation.m')

layer1 = gf_CreateLayer("Clayey Gravel",0,4,20,40000,0.30);
layer2 = gf_CreateLayer("Stiff Clay",4,14,19,25000,0.35);
layer3 = gf_CreateLayer("Hard Clay",14,26,20,60000,0.30);

profile = gf_CreateProfile(layer1,layer2,layer3);

footing = gf_CreateFooting("Strip",5,1,4);

load = gf_CreateLoad("UniformPressure",280);

stress = gf_CalculateStressProfile(...
    profile,...
    footing,...
    load,...
    26,...
    0.25);

layerStress = gf_LayerStressStrip(profile,stress);

disp(layerStress)
