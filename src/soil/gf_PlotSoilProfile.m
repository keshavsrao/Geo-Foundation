function gf_PlotSoilProfile(profile)

figure;
hold on;

colors = lines(profile.nLayers);

for i = 1:profile.nLayers

    L = profile.layers{i};

    x = [0 1 1 0];
    y = [L.top L.top L.bottom L.bottom];

    fill(x,y,colors(i,:));

    text(0.5,...
        (L.top+L.bottom)/2,...
        L.name,...
        'HorizontalAlignment','center');

end

set(gca,'YDir','reverse');
xlabel('Soil Profile');
ylabel('Depth (m)');
title('GeoFoundation Soil Profile');

xlim([0 1]);
grid on;

end
