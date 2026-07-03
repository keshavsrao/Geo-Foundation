%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% GeoFoundation
%
% Function:
%   gf_PrintProfile
%
% Description:
%   Prints a formatted summary of a soil profile.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function gf_PrintProfile(profile)

fprintf('\n');
fprintf('=====================================================\n');
fprintf('              GeoFoundation Soil Profile\n');
fprintf('=====================================================\n');

fprintf('Number of Layers : %d\n', profile.nLayers);
fprintf('Profile Depth    : %.2f m\n', profile.totalDepth);

fprintf('=====================================================\n');

for i = 1:profile.nLayers

    L = profile.layers{i};

    fprintf('\nLayer %d\n', i);
    fprintf('-----------------------------------------------------\n');
    fprintf('Name       : %s\n', L.name);
    fprintf('Top        : %.2f m\n', L.top);
    fprintf('Bottom     : %.2f m\n', L.bottom);
    fprintf('Thickness  : %.2f m\n', L.thickness);
    fprintf('Gamma      : %.2f kN/m^3\n', L.gamma);
    fprintf('E          : %.2f kPa\n', L.E);
    fprintf('nu         : %.2f\n', L.nu);

end

fprintf('\n=====================================================\n');

end
