imgname='1.jpg';
A = imread(imgname);
figure(1);
subplot(3,1,1);
imshow(A);
title('原图');
subplot(3,1,2);
graydata = rgb2gray(A);  %灰度图
imshow(graydata);
title('灰度图');
subplot(3,1,3);
bina = im2bw(A);  %二值图
imshow(bina);
title('二值图');
