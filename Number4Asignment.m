clc
color_img_1st=imread('1.jpg');
subplot(2,2,1); imshow(color_img_1st); title('Original 1st Image');

img_1st_re= imresize(color_img_1st,[300,300])
subplot(2,2,2);imshow(img_1st_re);title('Resize Image');

color_img_2nd=imread('2.jpg');
subplot(2,2,3); imshow(color_img_2nd); title('Original 2nd Image');

img_2nd_re= imresize(color_img_2nd,[300,300])
subplot(2,2,4);imshow(img_2nd_re);title('Resize Image');

