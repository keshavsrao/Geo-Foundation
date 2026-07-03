function status = gf_ValidateFooting(footing)

status = true;

if isempty(footing.type)

    error("Footing type missing.");

end

if footing.width<=0

    error("Width must be positive.");

end

if footing.length<=0

    error("Length must be positive.");

end

if footing.depth<0

    error("Depth cannot be negative.");

end

if footing.pressure<=0

    error("Bearing pressure must be positive.");

end

end
