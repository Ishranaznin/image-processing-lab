% Read the RGB image
rgbImage = imread('1.jpg');
subplot(1, 3, 1);imshow(rgbImage);title('RGB Image');

% Convert RGB to YCbCr
ycbcrImage = rgb2ycbcr(rgbImage);
subplot(1, 3, 2);imshow(ycbcrImage);title('YCbCr Image');

% Convert YCbCr to RGB
reconstructedImage = ycbcr2rgb(ycbcrImage);
subplot(1, 3, 3);imshow(reconstructedImage);title('Reconstructed RGB Image');
