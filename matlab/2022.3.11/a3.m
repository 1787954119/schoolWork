[x,y,z] = meshgrid(-10:0.1:10);
V = (x.^2 + 9/4 .* y.^2 + z.^2 - 1).^3 - x.^2 .* z.^3 - 9/80 .* y.^2 .* z.^3;
isosurface(x,y,z,V,0);