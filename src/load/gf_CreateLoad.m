%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% GeoFoundation
%
% Function:
%   gf_CreateLoad
%
% Description:
%   Creates a load structure.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function load = gf_CreateLoad("Type","UniformPressure", "Magnitude",280)

    load.type = type;
    load.magnitude = magnitude;

    load.version = "0.1.0";
    load.units = "kPa";

end
