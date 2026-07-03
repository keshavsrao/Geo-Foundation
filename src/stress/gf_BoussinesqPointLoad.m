%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% GeoFoundation
%
% Function:
%   gf_BoussinesqPointLoad
%
% Description:
%   Calculates vertical stress due to a surface point load.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function sigma_z = gf_BoussinesqPointLoad(P,r,z)

R = sqrt(r^2 + z^2);

sigma_z = (3*P*z^3) / (2*pi*R^5);

end
