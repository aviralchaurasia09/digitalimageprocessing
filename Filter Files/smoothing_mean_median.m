% Median Filters
I=imread('1.png');
K = rgb2gray(I);
J= imnoise(K ,'salt & pepper',0.05);
f= medfilt2(J,[3,3]);
f1=medfilt2(J,[10,10]);
subplot(3,2,1); imshow(I); title('Original Image');
subplot(3,2,2); imshow(K); title('Gray Image');
subplot(3,2,3); imshow(J); title('Noise added Image');
subplot(3,2,4); imshow(f); title('3x3 Image');
subplot(3,2,5); imshow(f1); title('10x10 Image');
%Average Filter
figure;
i=imread('1.png');
g=rgb2gray(i);
g1=fspecial('average',[3 3]);
b1 = imfilter(g,g1);
subplot(2,2,1); imshow(i); title('Original Image');
subplot(2,2,2); imshow(g); title('Gray Image');
subplot(2,2,3); imshow(b1); title('3x3 Image');
g2= fspecial('average',[10 10]);
b2=imfilter(g,g2);
subplot(2,2,4); imshow(b2); title('10x10 Image');