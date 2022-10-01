Im1 = imread('penguin.jpg');
Im2 = imread('aa2.jpg');
figure(1)
subplot(2, 2, 1); imshow(Im1); title('Color Image');
Im1 = rgb2gray(Im1);
subplot(2, 2, 2); imshow(Im1); title('Greyscale Image');
subplot(2, 2, 3); imshow(Im2); title('Color Image of aviral');
Im2 = rgb2gray(Im2);
subplot(2, 2, 4); imshow(Im2); title('Greyscale Image of aviral');
