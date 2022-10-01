% Brightness Change
Im1 = imread('penguin.jpg');
% Add bias to image (Addition and Subtraction)
bright1 = 75; 
bright2 = 50; 
figure(2) 
I1_addBias = Im1 + bright1;
I1_subBias = Im1 - bright1;

I2_addBias = Im1 + bright2;
I2_subBias = Im1 - bright2;

subplot(2,3,2); imshow(Im1); xlabel('Original Greyscale Image, I');
title('Brightness Change');
subplot(2,3,1); imshow(I1_addBias); xlabel('I + bias(75)');
subplot(2,3,3); imshow(I1_subBias); xlabel('I - bias(75)');

subplot(2,3,5); imshow(Im1); xlabel('Original Greyscale Image, I');
subplot(2,3,4); imshow(I2_addBias); xlabel('I + bias(50)');
subplot(2,3,6); imshow(I2_subBias); xlabel('I - bias(50)');
