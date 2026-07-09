clear;
clc;

run('../../scripts/SetupGeoFoundation.m')

q = 280;
B = 5.0;
z = 4.0;

sigma = gf_BoussinesqStrip(q,B,z);

m = B/(2*z);

sigma_ref = (2*q/pi)*(atan(m)+m/(1+m^2));

error_percent = abs(sigma-sigma_ref)/sigma_ref*100;

fprintf('\n');
fprintf('=========================================\n');
fprintf('Strip Footing Verification\n');
fprintf('=========================================\n');
fprintf('GeoFoundation : %.6f kPa\n',sigma);
fprintf('Reference     : %.6f kPa\n',sigma_ref);
fprintf('Error         : %.10f %%\n',error_percent);

if error_percent < 1e-8
    fprintf('\nVerification : PASS\n');
else
    fprintf('\nVerification : FAIL\n');
end

fprintf('=========================================\n');
