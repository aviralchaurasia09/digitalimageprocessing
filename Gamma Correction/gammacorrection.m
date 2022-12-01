Im1 = imread('penguin.jpg');
%Im2 = imread('thermalImage2.jpg');

% Gamma Correction
gamma = 1.05;
Im1G_double = double(Im1G);
g1_gamma = Im1G_double.^gamma;

figure(8);
subplot(2, 1, 1); imshow(Im1G); xlabel('Original');
subplot(2, 1, 2); imshow(uint8(g1_gamma)); xlabel('Gamma Correction');