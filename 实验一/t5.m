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
title('ԭͼ');
figure(2);
subplot(2,2,1);imshow(rotate);
title('��ʱ����ת30��');
subplot(2,2,3);imshow(up);
title('���·�ת');
subplot(2,2,4);imshow(lr);
title('���ҷ�ת');
figure(3);
imshow(zoomin);
title('�Ŵ�Ϊ1.5��');
figure(4);
imshow(zoomout);
title('��СΪ0.5��');
