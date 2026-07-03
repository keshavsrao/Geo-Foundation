
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% GeoFoundation
%
% Example:
%   Example_CreateFooting
% "The footing object created here is intended to be passed to analysis
% functions such as bearing capacity, settlement, or finite element 
% routines introduced in later sections."
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear;
clc;
close all;

run('../scripts/SetupGeoFoundation.m')

%% Create footing
footing = gf_CreateFooting(...
"Strip",...
5,...
1,...
4,...
280);

%% Plot

%gf_PlotFooting(footing);
