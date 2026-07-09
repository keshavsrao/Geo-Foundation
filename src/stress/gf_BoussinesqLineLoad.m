%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% GeoFoundation
%
% Function:
%   gf_BoussinesqLineLoad
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function sigma_z = gf_BoussinesqLineLoad(q,x,z)

R = sqrt(x^2 + z^2);

sigma_z = (2*q*z^3)/(pi*R^4);

end
