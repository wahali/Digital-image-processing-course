imgname = '8.png';
a = imread(imgname);
A2= rgb2gray(a); 
H = fspecial('sobel');%ѡ��sobel����
J = filter2(H,A2);  %�������
figure(1);
subplot(2,3,1);
imshow(A2);
title('ԭͼ');
subplot(2,3,2);
imshow(J);
title('sobel������ͼ��');
h = [0 1 0,1 -4 1,0 1 0]; %������˹����
j = conv2(A2,h,'same'); % �������
subplot(2,3,3);
imshow(j);
title('������˹������ͼ��');
subplot(2,3,4);
bb  = edge(A2,'sobel',0.09);
imshow(bb,[]);
title('sobel���ӱ�Ե���');
subplot(2,3,5);
cc = edge(A2,'log',0.005);
imshow(cc);
title('������˹���ӱ�Ե���');
