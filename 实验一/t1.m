imgname='1.jpg';
A = imread(imgname);
figure(1);
subplot(3,1,1);
imshow(A);
title('ԭͼ');
subplot(3,1,2);
graydata = rgb2gray(A);  %�Ҷ�ͼ
imshow(graydata);
title('�Ҷ�ͼ');
subplot(3,1,3);
bina = im2bw(A);  %��ֵͼ
imshow(bina);
title('��ֵͼ');
