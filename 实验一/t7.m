imgname = '7.png';
a = imread(imgname);
b = a;
%b = rgb2gray(a);
b = imnoise(b,'salt & pepper',0.02);%添加椒盐噪声
c1 = medfilt3(b,[3 3 3]); %中值滤波
c2 = medfilt3(b,[7 7 3]);
h1 = fspecial('average',[3,3]);
d = imfilter(b,h1); %均值滤波
 %最小二乘平滑滤波，参数列表（输入，order，framelen）
 %framelen 必须为奇数为框长度
e = sgolayfilt(double(b),3,7,[],1);
figure(1);
subplot(3,2,1);imshow(a);title('原图');
subplot(3,2,2);imshow(b);title('原图加入椒盐噪声');
subplot(3,2,3);imshow(c1);title('领域为3*3二维中值滤波');
subplot(3,2,4);imshow(c2);title('领域为7*7二维中值滤波');
subplot(3,2,5);imshow(d);title('模板尺寸为9的均值滤波');
subplot(3,2,6);imshow(uint8(e));title('最小二乘平滑滤波');
