% Read the RGB image
rgbImage = imread('1.jpg');

% Convert RGB to JPG and save the file
jpgFilename = '1.jpg';
imwrite(rgbImage, jpgFilename, 'jpg');

% Convert RGB to BMP and save the file
bmpFilename = '1.bmp';
imwrite(rgbImage, bmpFilename, 'bmp');

% Convert RGB to PNG and save the file
pngFilename = '1.png';
imwrite(rgbImage, pngFilename, 'png');

% Get the file sizes
jpgInfo = dir(jpgFilename);     bmpInfo = dir(bmpFilename);     pngInfo = dir(pngFilename);

% Display the file sizes
disp(['JPG File Size: ', num2str(jpgInfo.bytes), ' bytes']);
disp(['BMP File Size: ', num2str(bmpInfo.bytes), ' bytes']);
disp(['PNG File Size: ', num2str(pngInfo.bytes), ' bytes']);
