%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% GeoFoundation
%
% Verification:
%   Verify_BoussinesqLineLoad
%
% Purpose:
%   Verify the analytical solution for stress beneath a surface line load.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear;
clc;

run('../../scripts/SetupGeoFoundation.m')

%% Test Case

q = 100;      % kN/m
x = 0.0;      % m
z = 2.0;      % m

%% GeoFoundation Result

sigma = gf_BoussinesqLineLoad(q,x,z);

%% Analytical Solution

sigma_ref = (2*q)/(pi*z);

%% Error

error_percent = abs(sigma-sigma_ref)/sigma_ref*100;

%% Results

fprintf('\n');
fprintf('=========================================\n');
fprintf('Boussinesq Line Load Verification\n');
fprintf('=========================================\n');

fprintf('GeoFoundation : %.6f kPa\n',sigma);
fprintf('Reference     : %.6f kPa\n',sigma_ref);
fprintf('Error         : %.6f %%\n',error_percent);

if error_percent < 1e-6
    fprintf('\nVerification : PASS\n');
else
    fprintf('\nVerification : FAIL\n');
end

fprintf('=========================================\n');
