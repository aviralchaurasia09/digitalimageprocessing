clc;
clearvars;
close all;
% % % % % % %
 % % % % % %
I =imread('lungn110.jpeg');
I=imresize(I,[512,512]);
% I=rgb2gray(I);
figure(1);
imshow(I);
% % % % % % % % %
% % % % % % % % Fourth Order PDEs % % % % % % % % % %
T=1.0;
I1=fpdepyou(I,T);
figure(2);
imshow(I1);
