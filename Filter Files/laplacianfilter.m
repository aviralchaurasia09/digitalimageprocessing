       I = imread('(1).jpg');
       subplot(2,2,1);imshow(I);title('Original Image'); 
       H = fspecial('Laplacian',0.2);
       MotionBlur = imfilter(I,H,'replicate');
       subplot(2,2,4);imshow(MotionBlur);title('Laplacian Filtered Image');
