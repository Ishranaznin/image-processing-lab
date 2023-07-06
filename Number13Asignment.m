clc
% Read the RGB image
image = imread('1.jpg');

% Display the original image
subplot(3, 2, 1);imshow(image);title('Original Image');

% Extract color channels
redChannel = image(:, :, 1);
greenChannel = image(:, :, 2);
blueChannel = image(:, :, 3);

% Display the red channel
subplot(3, 2, 2);imshow(redChannel);title('Red Channel');

% Display the green channel
subplot(3, 2, 3);imshow(greenChannel);title('Green Channel');

% Display the blue channel
subplot(3, 2, 4);imshow(blueChannel);title('Blue Channel');

% Add all channels
combinedImage = redChannel + greenChannel + blueChannel;

% Compare the combined image with the original image
subplot(3, 2, 5);imshow(image);title('Original Iomage');
subplot(3, 2, 6);imshow(combinedImage);title('Combined Image');


