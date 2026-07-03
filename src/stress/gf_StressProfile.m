%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% GeoFoundation
%
% Function:
%   gf_StressProfile
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [depth,sigma] = gf_StressProfile(P,r,zmax,dz)

depth = 0:dz:zmax;

sigma = zeros(size(depth));

for i = 1:length(depth)

    sigma(i) = gf_BoussinesqPointLoad(...
        P,...
        r,...
        depth(i));

end

end
