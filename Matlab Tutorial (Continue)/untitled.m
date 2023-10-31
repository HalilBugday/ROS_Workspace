% 200-300 tane nokta oluşturma
numArrowPoints = randi([200, 300]);
thetaArrow = linspace(1, 5 * pi, numArrowPoints); % Arrow'ların theta açıları
arrowLength = 0.5; % Ok uzunluğu

% Spiral üzerindeki her nokta için XYZ koordinatları ve renk oluşturma
figure;
hold on;

for i = 1:numArrowPoints
    xArrow = x + radius * cos(thetaArrow(i)); % X koordinatı
    yArrow = y + radius * sin(thetaArrow(i)); % Y koordinatı
    zArrow = zNew(i); % Z koordinatı
    colorArrow = [rand(), rand(), rand()]; % Rastgele RGB renk oluşturma

    % Okları çizme
    quiver3(xArrow, yArrow, zArrow, 0, 0, arrowLength, 'Color', colorArrow, 'LineWidth', 2);
end

xlabel('X');
ylabel('Y');
zlabel('Z');
title('3D Spiral Üzerinde Oklar');
grid on;
view(3); % 3D görünüm

hold off;
