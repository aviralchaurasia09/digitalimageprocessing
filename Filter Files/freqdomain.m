% read the image
a=imread('1.png');
subplot(2,3,1),imshow(a),title('input image');
a=rgb2gray(a);
a=im2double(a);
[m,n]=size(a); % size of input image
A=fft2(a);% fourier transform of input image
subplot(2,3,2),imshow(uint8(abs(A))),title('F.T. of I/P without shift');
A_shift=fftshift(A); % shifting origin'
A_real=abs(A_shift); % real part of B_shift
subplot(2,3,3),imshow(uint8(A_real)),title('frequencybdomain image');
DO = 50;
for u=1:m
for v=1:n
d = sqrt((u-m/2).^2+(v-n/2).^2);
 H(u,v)=exp(-(d^2)/(2*DO.^2));
end
end
H_low = H.*A_shift;
H_low_real = H.*A_real;
H_low_shift = H.*A_real;
H_low_image = H.*A_real;
subplot(2,3,4),imshow(H),title('Gaussian low pass filter');
subplot(2,3,5),mesh(H),title('surface plot GLPF');
subplot(2,3,6),imshow(abs(H_low_image)),title('Gaussian low pass filtered
image');