
Im1 = imread('penguin.jpg');
alpha = 1.2; 
beta = 2;
I1_multiplyAlpha = alpha*Im1;
I1_multiplyBeta = Im1/beta;
figure(7)
subplot(2,3,2); imshow(Im1); xlabel('Original Greyscale Image, I');
title('Contrast Change');
subplot(2,3,1); imshow(I1_multiplyAlpha); xlabel('\alpha * I');
subplot(2,3,3); imshow(I1_multiplyBeta); xlabel('I / \beta');

