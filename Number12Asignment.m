% Read the image
image = imread('1.jpg');

% Scan line operation vertical
grayImg=rgb2gray(image);
rowIndex=160;
rowValue=grayImg(rowIndex,:);

% Flip operation
flipImage_horizontally = flip(image, 2); % Flip horizontally
flipImage_vertically = flip(image, 1); % Flip vertically 

% Complement operation
complementImage = imcomplement(image); % Invert pixel values

subplot(3, 2, 1);imshow(image);title('Original Image');
subplot(3, 2, 2);plot(rowValue);title('Scan Line Image');
subplot(3, 2, 3);imshow(flipImage_horizontally);title('Flipped Horizontally Image');
subplot(3, 2, 4);imshow(flipImage_vertically );title('Flipped Vertically Image');
subplot(3, 2, 5);imshow(complementImage);title('Complement Image');
