%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% GeoFoundation
%
% Function:
%   gf_BoussinesqPointLoad
%
% Description:
%   Computes the vertical stress due to a surface point load.
%
% Inputs:
%   P - Point load (kN)
%   r - Radial distance from load (m)
%   z - Depth below ground surface (m)
%
% Output:
%   sigma_z - Vertical stress (kPa)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function sigma_z = gf_BoussinesqPointLoad(P,r,z)

R = sqrt(r^2 + z^2);

sigma_z = (3*P*z^3)/(2*pi*R^5);

end
