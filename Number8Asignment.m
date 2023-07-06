clc
clear all;
close all;
% Read the image
image = imread('1.jpg');
% Convert the image to grayscale if necessary
grayImage = rgb2gray(image);

% Calculate the histogram
histogram = imhist(grayImage);
% Display the histogram
bar(histogram);
title('Histogram of Image');
xlabel('Pixel Intensity');
ylabel('Frequency');
