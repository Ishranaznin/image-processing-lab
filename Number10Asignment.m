clc
clear all;
close all;
% Read the image
image = imread('1.jpg');

% Get the dimensions of the image
[height, width, channels] = size(image); 
% Calculate the center point
centerX = floor(width / 2);
centerY = floor(height / 2);

% Display the center point
imshow(image);
hold on;
plot(centerX, centerY, 'r*', 'MarkerSize', 15);
title('Image with Center Point');
