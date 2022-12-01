A = imread('penguin.jpg');
A1 = imresize((imresize(A,1/2)),2);
imshow(A)
A = imread('penguin.jpg');
A2 = imresize((imresize(A,1/4)),4);
imshow(A2)

