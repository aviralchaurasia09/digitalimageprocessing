% Created by: Jessica Gallo
% Date Created: 3/8/2021
% Last Modified: 3/8/2021
% CSC741 Digital Image Processing
% HW 5

close all; clear;

% Load images
Im1 = imread('penguin.jpg');
Im2 = imread('penguin.jpg');
Im3 = imread('aa2.jpg');
% RBG to Grey
Im1G = rgb2gray(Im1);
Im2G = rgb2gray(Im2);
Im3G = rgb2gray(Im3);
% Resize
Im1G = imresize(Im1G, [120, 120]);
Im2G = imresize(Im2G, [120, 120]);
Im3G = imresize(Im3G, [120, 120]);
figure(1)
subplot(3, 1, 1); imshow(Im1G); xlabel('Image 1'); title('Images Greyscale and Resized');
subplot(3, 1, 2); imshow(Im2G); xlabel('Image 2');
subplot(3, 1, 3); imshow(Im3G); xlabel('Image 3');

% =========================================================================
% Part 1:
% Generate and add 4 different noise (including Gaussian salt-and-pepper
% (impulse)) noise to 3 images. You must be able to specify the noise mean
% and variance (for example=10, 0.8)
% =========================================================================

% Image 1
Im1G_noise1 = imnoise(Im1G, 'gaussian', 0.02);
Im1G_noise2 = imnoise(Im1G, 'salt & pepper', 0.02); % 0.5 is default
Im1G_noise3 = imnoise(Im1G, 'poisson');
Im1G_noise4 = imnoise(Im1G, 'speckle', 0.02); % 0.5 default

figure(2)
subplot(3, 2, 1); imshow(Im1); xlabel('Original'); title('Noise in Image 1');
subplot(3, 2, 2); imshow(Im1G_noise1); xlabel('Gaussian Noise');
subplot(3, 2, 3); imshow(Im1G_noise2); xlabel('Salt&Pepper');
subplot(3, 2, 4); imshow(Im1G_noise3); xlabel('Poisson');
subplot(3, 2, 5); imshow(Im1G_noise4); xlabel('Speckle');

figure(3)
subplot(3, 2, 1); imhist(Im1); ylabel('Original'); title('Noise in Image 1');
subplot(3, 2, 2); imhist(Im1G_noise1); ylabel('Gaussian Noise');
subplot(3, 2, 3); imhist(Im1G_noise2); ylabel('Salt&Pepper');
subplot(3, 2, 4); imhist(Im1G_noise3); ylabel('Poisson');
subplot(3, 2, 5); imhist(Im1G_noise4); ylabel('Speckle');

% Image2
Im2G_noise1 = imnoise(Im2G, 'gaussian', 0.02);
Im2G_noise2 = imnoise(Im2G, 'salt & pepper', 0.02); % 0.5 is default
Im2G_noise3 = imnoise(Im2G, 'poisson');
Im2G_noise4 = imnoise(Im2G, 'speckle', 0.02); % 0.5 default

figure(4)
subplot(3, 2, 1); imshow(Im2G); xlabel('Original'); title('Noise in Image 2');
subplot(3, 2, 2); imshow(Im2G_noise1); xlabel('Gaussian Noise');
subplot(3, 2, 3); imshow(Im2G_noise2); xlabel('Salt&Pepper');
subplot(3, 2, 4); imshow(Im2G_noise3); xlabel('Poisson');
subplot(3, 2, 5); imshow(Im2G_noise4); xlabel('Speckle');

figure(5)
subplot(3, 2, 1); imhist(Im2G); ylabel('Original'); title('Noise in Image 2');
subplot(3, 2, 2); imhist(Im2G_noise1); ylabel('Gaussian Noise');
subplot(3, 2, 3); imhist(Im2G_noise2); ylabel('Salt&Pepper');
subplot(3, 2, 4); imhist(Im2G_noise3); ylabel('Poisson');
subplot(3, 2, 5); imhist(Im2G_noise4); ylabel('Speckle');

% Image 3
Im3G_noise1 = imnoise(Im3G, 'gaussian', 0.02); % variance = 0.4 | mean = zeromean
Im3G_noise2 = imnoise(Im3G, 'salt & pepper', 0.02); % variance = 0.5 is default
Im3G_noise3 = imnoise(Im3G, 'poisson');
Im3G_noise4 = imnoise(Im3G, 'speckle', 0.02); % variance = 0.5 default

figure(6)
subplot(3, 2, 1); imshow(Im3G); xlabel('Original'); title('Noise in Image 3');
subplot(3, 2, 2); imshow(Im3G_noise1); xlabel('Gaussian Noise');
subplot(3, 2, 3); imshow(Im3G_noise2); xlabel('Salt&Pepper');
subplot(3, 2, 4); imshow(Im3G_noise3); xlabel('Poisson');
subplot(3, 2, 5); imshow(Im3G_noise4); xlabel('Speckle');

figure(7)
subplot(3, 2, 1); imhist(Im3G); ylabel('Original'); title('Noise in Image 3');
subplot(3, 2, 2); imhist(Im3G_noise1); ylabel('Gaussian Noise');
subplot(3, 2, 3); imhist(Im3G_noise2); ylabel('Salt&Pepper');
subplot(3, 2, 4); imhist(Im3G_noise3); ylabel('Poisson');
subplot(3, 2, 5); imhist(Im3G_noise4); ylabel('Speckle');

