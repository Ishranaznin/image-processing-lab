% Read the color image
image = imread('1.jpg');  % Replace 'path_to_image.jpg' with the actual path to your image

% Convert the color image to grayscale
gray_image = rgb2gray(image);

% Adjust the intensity levels using imadjust function
adjusted_image = imadjust(gray_image, [0 1], [0.2 0.8]);  % Adjust the intensity range as needed

% Display the original and adjusted images
subplot(1, 2, 1);
imshow(image);
title('Original Image');

subplot(1, 2, 2);
imshow(adjusted_image);
title('Adjusted Image');
