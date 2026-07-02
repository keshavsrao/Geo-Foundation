%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% GeoFoundation
%
% Function:
%   gf_ValidateLayer
%
% Description:
%   Validates a soil layer structure.
%
% Input:
%   layer - Soil layer structure
%
% Output:
%   status - true if valid
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function status = gf_ValidateLayer(layer)

    status = true;

    % Name
    if isempty(layer.name)
        error('Layer name cannot be empty.');
    end

    % Geometry
    if layer.top >= layer.bottom
        error('Bottom elevation must be greater than top elevation.');
    end

    % Unit weight
    if layer.gamma <= 0
        error('Unit weight must be positive.');
    end

    % Young''s Modulus
    if layer.E <= 0
        error('Young''s modulus must be positive.');
    end

    % Poisson's ratio
    if layer.nu < 0 || layer.nu >= 0.5
        error('Poisson''s ratio must satisfy 0 <= nu < 0.5.');
    end

   % disp('Layer validation successful.')

end
