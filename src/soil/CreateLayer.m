%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% GeoFoundation
%
% Function:
%   CreateLayer
%
% Description:
%   Creates a soil layer structure.
%
% Inputs:
%   name    - Soil layer name
%   top     - Top elevation (m)
%   bottom  - Bottom elevation (m)
%   gamma   - Unit weight (kN/m^3)
%   E       - Young's modulus (kPa)
%   nu      - Poisson's ratio
%
% Output:
%   layer   - Soil layer structure
%
% Author:
%   GeoFoundation Development Team
%
% Version:
%   0.1.0-alpha
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function layer = CreateLayer(name, top, bottom, gamma, E, nu)

    layer.name = name;
    layer.top = top;
    layer.bottom = bottom;
    layer.thickness = bottom - top;

    layer.gamma = gamma;
    layer.E = E;
    layer.nu = nu;
    layer.type = "SoilLayer";
	layer.version = "0.1.0";

end
