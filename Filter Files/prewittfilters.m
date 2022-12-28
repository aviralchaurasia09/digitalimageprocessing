       I = imread('(1).jpg');
       subplot(2,2,1);imshow(I);title('Original Image'); 
       H = fspecial('prewitt');
       MotionBlur = imfilter(I,H,'replicate');
       subplot(2,2,2);imshow(MotionBlur);title('Prewitt Filtered Image');
