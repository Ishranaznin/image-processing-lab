% Read the JPG image
jpgImage = imread('1.jpg');

% Convert JPG to BMP
bmpFilename = '1.bmp';
imwrite(jpgImage, bmpFilename, 'bmp');
bmpImage = imread(bmpFilename);

% Convert JPG to PNG
pngFilename = '1.png';
imwrite(jpgImage, pngFilename, 'png');
pngImage = imread(pngFilename);

% Convert JPG to WMF
fig = figure;
wmfFilename = '1.wmf';
saveas(fig, wmfFilename, 'meta');

% Display the images
subplot(1, 3, 1);imshow(jpgImage);title('JPG Image');

subplot(1, 3, 2);imshow(bmpImage);title('BMP Image');

subplot(1, 3, 3);imshow(pngImage);title('PNG Image');


