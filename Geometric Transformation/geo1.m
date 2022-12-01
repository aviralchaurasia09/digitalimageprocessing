Img = imread('penguin.jpg');
imshow(Img)
gform = affine2d([1 0 0; .5 1 0; 1 0 1])
Jmg = imwarp(Img,gform);
figure
imshow(Jmg)