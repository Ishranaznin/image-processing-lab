% Define the x-axis values (time or angle)
x = linspace(0, 4*pi, 1000); % Range from 0 to 2*pi with 1000 points

% Calculate the y-values for sine and cosine waves
y_sin = sin(x);
y_cos = cos(x);

% Plot the sine wave
subplot(2, 1, 1);
plot(x, y_sin, 'b', 'LineWidth', 2);
xlabel('x');
ylabel('sin(x)');
title('Sine Wave');
grid on;

% Plot the cosine wave
subplot(2, 1, 2);
plot(x, y_cos, 'r', 'LineWidth', 2);
xlabel('x');
ylabel('cos(x)');
title('Cosine Wave');
grid on;
