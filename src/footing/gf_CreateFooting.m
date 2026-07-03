function footing = gf_CreateFooting(...
    type,...
    width,...
    length,...
    depth,...
    pressure)

footing.type = type;

footing.width = width;
footing.length = length;

footing.depth = depth;

footing.pressure = pressure;

footing.area = width*length;

end
