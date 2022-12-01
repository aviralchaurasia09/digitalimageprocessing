Im1 = imread('penguin.jpg');
%Im2 = imread('thermalImage2.jpg');

% Noisy Image
ImG_noisy = imnoise(Im1G, 'gaussian', 0.04);

figure(6)
subplot(2, 2, 1); imshow(Im1G); xlabel('Original');
subplot(2, 2, 2); imhist(Im1G); ylabel('Original Histogram');
subplot(2, 2, 3); imshow(ImG_noisy); xlabel('Noisy Image');
subplot(2, 2, 4); imhist(ImG_noisy); ylabel('Noisy Histogram');
