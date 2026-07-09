% Function:
%   gf_BoussinesqStrip
%
% Description:
%   Calculates the vertical stress beneath the centreline of an infinitely
%   long strip footing subjected to a uniformly distributed pressure.
%
% Inputs:
%   q - Uniform pressure (kPa)
%   B - Footing width (m)
%   z - Depth below footing base (m)
%
% Output:
%   sigma_z - Vertical stress (kPa)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function sigma_z = gf_BoussinesqStrip(q,B,z)

if z <= 0
    error('Depth must be greater than zero.');
end

m = B/(2*z);

sigma_z = (2*q/pi) * (atan(m) + m/(1+m^2));

end
