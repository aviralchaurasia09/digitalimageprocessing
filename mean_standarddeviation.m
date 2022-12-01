i=imread('cancercell.jpg');
subplot(2,2,1); imshow(i);title('Original Image');
g=rgb2gray(i);
subplot(2,2,2); imshow(g);title('Gray Image');
c=imcrop(g);
subplot(2,2,3); imshow(c);title('Cropped Image');
m=mean2(c);disp('m'); disp(m);
s=std2(c); disp('s'); disp(s);
figure,
k=(checkerboard>0.8);
subplot(2,1,1); imshow(k); title('Image1');
k1=(checkerboard>0.5);
subplot(2,1,2); imshow(k1); title('Image2');
r=corr2(k,k1);
disp('r');disp(r);
m
74.5173
s
44.2327
r
0.5774