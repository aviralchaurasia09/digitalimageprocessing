% Display color Image, find its complement and convert to gray scale
I=imread('cancercell.jpg');
subplot(2,2,1); imshow(I); subimage(I); title('Color Image');
c=imcomplement(I);
subplot(2,2,2); imshow(c); subimage(c); title('Complement of color Image');
r=rgb2gray(I);
subplot(2,2,3); imshow(r); subimage(r); title('Gray scale of color Image');
%Complement of Gray Image
b=imcomplement(r);
subplot(2,2,4); imshow(b); subimage(b); title('Complement of Gray Image');
%Simulation of an Image( Arithmetic & Logic Operation)
a=ones(40); b=zeros(40);
c=[a b;b a]; d=[b b;a a];
A=10*(c+d);
M=c.*d;
S=c-d;
D=c/4;
figure;
subplot(3,2,1); imshow(c);
subplot(3,2,2); imshow(d);
subplot(3,2,3); imshow(A);
subplot(3,2,4); imshow(M);
subplot(3,2,5); imshow(S);
subplot(3,2,6); imshow(D);