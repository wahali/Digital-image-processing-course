imgname = '5.tif';
a = imread(imgname);
zoomin = imresize(a,1.5,'nearest');
zoomout = imresize(a,0.5,'nearest');
rotate = imrotate(a,30);
for k = 1:3
up = flipud(a);
lr = fliplr(a);
end
figure(1);
imshow(a);
title('原图');
figure(2);
subplot(2,2,1);imshow(rotate);
title('逆时针旋转30度');
subplot(2,2,3);imshow(up);
title('上下翻转');
subplot(2,2,4);imshow(lr);
title('左右翻转');
figure(3);
imshow(zoomin);
title('放大为1.5倍');
figure(4);
imshow(zoomout);
title('缩小为0.5倍');
