%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% GeoFoundation
%
% Function:
%   gf_LayerStressStrip
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function layerStress = gf_LayerStressStrip(profile, stress)

gf_ValidateProfile(profile);

layerStress.nLayers = profile.nLayers;

for i = 1:profile.nLayers

    layer = profile.layers{i};

    idx = find(stress.depth >= layer.top & ...
               stress.depth <= layer.bottom);

    layerStress.layer(i).name = layer.name;

    layerStress.layer(i).top = layer.top;

    layerStress.layer(i).bottom = layer.bottom;

    layerStress.layer(i).thickness = layer.thickness;

    layerStress.layer(i).avgStress = ...
        mean(stress.sigma(idx));

end

end
