%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% GeoFoundation
%
% Function:
%   gf_ValidateProfile
%
% Description:
%   Validates a soil profile.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function status = gf_ValidateProfile(profile)

    status = true;

    % Number of layers
    if profile.nLayers < 1
        error('Profile must contain at least one layer.');
    end

    % Validate each layer
    for i = 1:profile.nLayers
        gf_ValidateLayer(profile.layers{i});
    end

    % Check continuity
    for i = 1:(profile.nLayers-1)

        currentBottom = profile.layers{i}.bottom;
        nextTop = profile.layers{i+1}.top;
		tol = 1e-6;

		if abs(currentBottom-nextTop) > tol
        
            error(['Gap or overlap detected between Layer ', num2str(i), ...
                   ' and Layer ', num2str(i+1)]);
        end

    end

end
