% MATLAB program for RGB to HSI image conversion.
	img = imread('1.jpg');

% Represent the RGB image in [0 1] range
	I = double(img) / 255;
	R = I(:,:,1);
	G = I(:,:,2);
	B = I(:,:,3);

% Converting the image to HSV to
% obtain the Hue and Saturation Channels
	HSV = rgb2hsv(img);
	H = HSV(:,:,1);
	S = 1 - 3 * min(min(R, G), B) ./ (R + G + B );

% Intensity
	I = R+G+B/3;

% Creating the HSL Image
HSI = zeros(size(img));
HSI(:,:,1) = H;
HSI(:,:,2) = S;
HSI(:,:,3) = I;
subplot(1,2,1);imshow(img); title('Original Image');
subplot(1,2,2);imshow(HSI); title('HSI Image');
