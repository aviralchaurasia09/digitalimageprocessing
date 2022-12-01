w = imread('penguin.jpg');
subplot(3,3,1)
imshow(w);
a = rgb2gray(w);
subplot(3,3,2)
imshow(a);
subplot(3,3,3)
b = w(:,:,1);
c = w(:,:,2);
d = w(:,:,3);
s = zeros(size(w, 1), size(w, 2));
just_red = cat(3,b, s, s)
just_green = cat(3,s,c,s)
just_blue = cat(3,s,s,d)
imshow(just_red)
subplot(3,3,4)
imshow(just_blue)
subplot(3,3,5)
imshow(just_green)
