imgname = '4.tif';
a = imread(imgname);
b = histeq(a); % ֱ��ͼ���⻯
%graydate = rgb2gray(a);
figure(1);
subplot(2,2,1);imshow(a); 
title('ԭͼ��');
subplot(2,2,2);imshow(b);
title('�����ԭͼ');
%figure(2);
subplot(2,2,3);imhist(a);%imhist��ʾ�Ҷ�ֱ��ͼ
title('�Ҷ�ֱ��ͼ');
subplot(2,2,4);imhist(b);
%figure(3);
title('ֱ��ͼ���⻯');
