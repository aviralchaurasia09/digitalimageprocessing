%Program for edge detection algorithm
I=imread('coins.png');
figure,imshow(I)
title ('figure 1 original image');
h=ones(5,5)/25;
b=imfilter(I,h);
figure,imshow(b)
title ('figure 2 filtered image');
c=edge(b,'sobel');
figure,imshow(c)
title ('figure 3 edge detected output by sobel operator');
d=edge(b,'prewitt');
figure,imshow(d)
title ('figure 4 edge detected output by prewitt operator');
e=edge(b,'robert');
figure,imshow(e)
title ('figure 5 edge detected output by robert operator');
f=edge(b,'canny');
figure,imshow(f)
title ('figure 6 edge detected output by canny operator');