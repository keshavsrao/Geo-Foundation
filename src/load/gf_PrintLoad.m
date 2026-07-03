%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% GeoFoundation
%
% Function:
%   gf_PrintLoad
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function gf_PrintLoad(load)

fprintf('\n');

fprintf('=========================================\n');
fprintf('          GeoFoundation Load\n');
fprintf('=========================================\n');

fprintf('Type       : %s\n',load.type);
fprintf('Magnitude  : %.2f %s\n',...
    load.magnitude,...
    load.units);

fprintf('=========================================\n');

end
