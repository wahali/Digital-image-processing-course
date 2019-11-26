imgname = '8.png';
a = imread(imgname);
A2= rgb2gray(a); 
H = fspecial('sobel');%选择sobel算子
J = filter2(H,A2);  %卷积运算
figure(1);
subplot(2,3,1);
imshow(A2);
title('原图');
subplot(2,3,2);
imshow(J);
title('sobel算子锐化图像');
h = [0 1 0,1 -4 1,0 1 0]; %拉普拉斯算子
j = conv2(A2,h,'same'); % 卷积运算
subplot(2,3,3);
imshow(j);
title('拉普拉斯算子锐化图像');
subplot(2,3,4);
bb  = edge(A2,'sobel',0.09);
imshow(bb,[]);
title('sobel算子边缘检测');
subplot(2,3,5);
cc = edge(A2,'log',0.005);
imshow(cc);
title('拉普拉斯算子边缘检测');
