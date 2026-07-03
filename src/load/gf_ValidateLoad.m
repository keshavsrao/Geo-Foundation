%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% GeoFoundation
%
% Function:
%   gf_ValidateLoad
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function status = gf_ValidateLoad(load)

status = true;

supportedTypes = { ...
    "UniformPressure", ...
    "PointLoad", ...
    "LineLoad", ...
    "Moment", ...
    "HorizontalLoad"};

if isempty(load.type)

    error("Load type cannot be empty.");

end

if ~any(strcmp(load.type,supportedTypes))

    error("Unsupported load type.");

end

if load.magnitude <= 0

    error("Load magnitude must be positive.");

end

end
