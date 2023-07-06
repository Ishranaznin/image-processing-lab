% Read the JPEG image
jpegImage = imread('image/img5.png');

% Convert the image to grayscale if needed
if size(jpegImage,3)==3
   grayscaleImage = rgb2gray(jpegImage);
end

% Perform DCT on the grayscale image
dctImage = dct2(grayscaleImage);

% Display the DCT coefficients
imshow(log(abs(dctImage)+1),[]);

title('DCT of JPEG Image');

