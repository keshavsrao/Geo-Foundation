%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% GeoFoundation
%
% Function:
%   gf_CreateProfile
%
% Description:
%   Creates a soil profile from one or more soil layers.
%
% Input:
%   Variable number of soil layer structures
%
% Output:
%   profile - Soil profile structure
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function profile = gf_CreateProfile(varargin)

    % Number of layers
    nLayers = nargin;

    if nLayers == 0
        error('At least one soil layer must be provided.');
    end

    % Store layers
    profile.layers = varargin;

    % Profile information
    profile.nLayers = nLayers;

    profile.top = varargin{1}.top;
    profile.bottom = varargin{end}.bottom;

    profile.totalDepth = profile.bottom - profile.top;

end
