imgname = '4.tif';
a = imread(imgname);
b = histeq(a); % 直方图均衡化
%graydate = rgb2gray(a);
figure(1);
subplot(2,2,1);imshow(a); 
title('原图像');
subplot(2,2,2);imshow(b);
title('均衡后原图');
%figure(2);
subplot(2,2,3);imhist(a);%imhist显示灰度直方图
title('灰度直方图');
subplot(2,2,4);imhist(b);
%figure(3);
title('直方图均衡化');
