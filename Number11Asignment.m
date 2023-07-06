% Read the image
image = imread('1.jpg');

% Define the coordinates of the first pixel
x1 = 100; % x-coordinate of the first pixel
y1 = 200; % y-coordinate of the first pixel

% Define the coordinates of the second pixel
x2 = 150; % x-coordinate of the second pixel
y2 = 300; % y-coordinate of the second pixel

% Get the pixel values at the specified coordinates and convert the pixel values to a 1-D vecto
pixel1 = double(reshape(image(y1, x1, :), [], 1));
pixel2 = double(reshape(image(y2, x2, :), [], 1));

% Calculate the Euclidean distance between the pixels
distance = norm(pixel1 - pixel2);

% Display the Euclidean distance
disp(['Euclidean Distance: ', num2str(distance)]);
