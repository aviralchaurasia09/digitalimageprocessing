       I = imread('penguin.jpg');
       subplot(2,2,1);imshow(I);title('Original Image'); 
       H = fspecial('sobel');
       MotionBlur = imfilter(I,H,'replicate');
       subplot(2,2,3);imshow(MotionBlur);title('Sobel Image');
