function gf_PrintFooting(footing)

fprintf('\n');

fprintf('=====================================\n');

fprintf('GeoFoundation Footing\n');

fprintf('=====================================\n');

fprintf('Type      : %s\n',footing.type);

fprintf('Width     : %.2f m\n',footing.width);

fprintf('Length    : %.2f m\n',footing.length);

fprintf('Depth     : %.2f m\n',footing.depth);

fprintf('Area      : %.2f m2\n',footing.area);

fprintf('Pressure  : %.2f kPa\n',footing.pressure);

fprintf('=====================================\n');

end
