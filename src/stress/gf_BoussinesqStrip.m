function sigma = gf_BoussinesqStrip(q,B,z)

n = 500;

dx = B/n;

sigma = 0;

for i = 1:n

    x = -B/2 + (i-0.5)*dx;

    R = sqrt(x^2 + z^2);

    dSigma = (2*q*z^3)/(pi*R^4);

    sigma = sigma + dSigma*dx;

end

end
