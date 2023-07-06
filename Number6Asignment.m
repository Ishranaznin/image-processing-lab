color_img_1st=imread('1.jpg');

img_re= imresize(color_img_1st,[90,50]);
subplot(2,2,1);imshow(color_img_1st);title('Original Image');

nearast_op = imresize(img_re,[300,600],'nearest');
subplot(2,2,2);imshow(nearast_op);title('Nearest Neighbour');

bicubic_op= imresize(img_re,[300,600],'bicubic');
subplot(2,2,3); imshow(bicubic_op); title('Bicubic Interpolation');

bilinear_op = imresize(img_re,[300,600],'bilinear');
subplot(2,2,4); imshow(bilinear_op); title('Bilinear Interpolation');

