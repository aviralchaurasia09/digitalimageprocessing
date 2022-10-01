Im1 = imread('penguin.jpg');
%Im2 = imread('thermalImage2.jpg');
figure(2)
Im1G_vector = Im1G(:); % converts to a single vector
subplot(2, 1, 1); imhist(Im1G); ylabel('Grey Image Histogram');
%subplot(2, 1, 2); imhist(Im1G_vector); ylabel('Grey Image 1 Vector Histogram');

% Histogram sliding % Contrast Stretching
% ----
% adding/subtracting a constant brightness value to all pixels in the image
% ----
Im1G_HSlide=im2double(Im1G);
bright_add = 0.2;
h2=Im1G_HSlide+bright_add;

%B = 2;
%h3 = Im1G_vector;
%Im1G_contrast = (2^B - 1)*(Im1G - min(Im1G_vector)) / (max(Im1G_vector)-min(Im1G_vector));
Im1G_contrast = imadjust(Im1G, stretchlim(Im1G, [0.05, 0.95]),[]);

figure(3);
subplot(3, 2, 1); imshow(Im1G); xlabel('Original Image');
subplot(3, 2, 2); imhist(Im1G); ylabel('Original Histogram');
subplot(3, 2, 3); imshow(h2), xlabel('Histogram Slide Image');
subplot(3, 2, 4); imhist(h2), ylabel('Histogram Slide Histogram');
subplot(3, 2, 5); imshow(uint8(Im1G_contrast)); xlabel('Contrast Stretching')
subplot(3, 2, 6); imhist(Im1G_contrast); ylabel('Contrast Stretching');
