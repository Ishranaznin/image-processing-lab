% Read the RGB image
rgbImage = imread('2.jpg');

% Convert the RGB image to grayscale
grayImage = rgb2gray(rgbImage);

% Convert the grayscale image to binary
binaryImageBefore = imbinarize(grayImage);
binaryImage = imbinarize(grayImage);

% Calculate the total number of pixels in the binary image
numPixels = numel(binaryImage);

% Calculate the number of pixels to be set as ones (10% of the total pixels)
numOnes = round(0.1 * numPixels);

% Randomly select pixels to set as ones
randomIndexes = randperm(numPixels, numOnes);
binaryImage(randomIndexes) = 1;

% Display the original RGB image and the resulting binary image
subplot(1, 3, 1);imshow(rgbImage);title('Original RGB Image');
subplot(1, 3, 2);imshow(binaryImageBefore);title('Binary Image ');
subplot(1, 3, 3);imshow(binaryImage);title('Binary Image with 10% Ones');
