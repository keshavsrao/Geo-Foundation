%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% GeoFoundation
%
% Function:
%   gf_CalculateStressProfile
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function stress = gf_CalculateStressProfile(profile, footing, load, zMax, dz)

% Validate inputs
gf_ValidateProfile(profile);
gf_ValidateFooting(footing);
gf_ValidateLoad(load);

% Depth vector
depth = 0:dz:zMax;

sigma = zeros(size(depth));

for i = 2:length(depth)

    sigma(i) = gf_BoussinesqStrip( ...
        load.magnitude,...
        footing.width,...
        depth(i));

end

stress.depth = depth;
stress.sigma = sigma;
stress.method = "Boussinesq Strip";
stress.units = "kPa";

end
