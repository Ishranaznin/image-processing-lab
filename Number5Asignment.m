color_img_1st=imread('1.jpg');
color_img_2nd=imread('2.jpg');
subplot(4,2,1);imshow(color_img_1st);title('Original 1st Image');
subplot(4,2,3);imshow(color_img_2nd);title('Original 2nd Image');

img_1st_re= imresize(color_img_1st,[300,300]);
binary_img_1st=im2bw(img_1st_re);
img_2nd_re= imresize(color_img_2nd,[300,300]);
binary_img_2nd=im2bw(img_2nd_re);
subplot(4,2,2);imshow(binary_img_1st);title('After binary & resize 1st Image');
subplot(4,2,4);imshow(binary_img_2nd);title('After binary & resize 2nd Image');

OR_result = or(binary_img_1st , binary_img_2nd);
subplot(4,2,5);imshow(OR_result);title('Output of Or Operation');

AND_result = and(binary_img_1st, binary_img_2nd);
subplot(4,2,6);imshow(AND_result);title('Output of And Operation');

XOR_result = xor(binary_img_1st , binary_img_2nd);
subplot(4,2,7);imshow(XOR_result);title('Output of XOR Operation');

XNOR_result = ~xor(binary_img_1st , binary_img_2nd);
subplot(4,2,8);imshow(XOR_result);title('Output of X-NOR Operation');

