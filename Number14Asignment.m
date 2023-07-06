% Read the RGB image
rgbImage = imread('1.jpg');

% Convert RGB to YIQ
yiqImage = rgb2ntsc(rgbImage);
% Convert YIQ to RGB
reconstructedImage = ntsc2rgb(yiqImage);

% Display the YIQ image
subplot(1, 3, 1);imshow(rgbImage);title('RGB Image');
subplot(1, 3, 2);imshow(yiqImage);title('YIQ Image');
subplot(1, 3, 3);imshow(reconstructedImage);title('Reconstructed RGB Image');