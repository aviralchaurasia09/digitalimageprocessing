
Im1 = imread('penguin.jpg');
% Image Transpose
figure(8)
subplot(1,3,1); imshow(Im1); xlabel('Original');
subplot(1,3,2); imshow(Im1(end:-1:1,:)); title('Image Transpose');
subplot(1,3,3);    imshow(imrotate(flip(Im1,2),90));
