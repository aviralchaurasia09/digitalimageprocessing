% High Resoltion
Im1 = imread('penguin.jpg');
num_col = 1028; % change resolution
num_row = 1028; % change resolution
I1ResizeHigh = imresize(Im1,[num_col num_row]); 
figure(1)
subplot(2,1,1); imshow(I1ResizeHigh); title([num2str(num_row) 'x' num2str(num_col)]);
