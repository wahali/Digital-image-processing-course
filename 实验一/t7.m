imgname = '7.png';
a = imread(imgname);
b = a;
%b = rgb2gray(a);
b = imnoise(b,'salt & pepper',0.02);%��ӽ�������
c1 = medfilt3(b,[3 3 3]); %��ֵ�˲�
c2 = medfilt3(b,[7 7 3]);
h1 = fspecial('average',[3,3]);
d = imfilter(b,h1); %��ֵ�˲�
 %��С����ƽ���˲��������б����룬order��framelen��
 %framelen ����Ϊ����Ϊ�򳤶�
e = sgolayfilt(double(b),3,7,[],1);
figure(1);
subplot(3,2,1);imshow(a);title('ԭͼ');
subplot(3,2,2);imshow(b);title('ԭͼ���뽷������');
subplot(3,2,3);imshow(c1);title('����Ϊ3*3��ά��ֵ�˲�');
subplot(3,2,4);imshow(c2);title('����Ϊ7*7��ά��ֵ�˲�');
subplot(3,2,5);imshow(d);title('ģ��ߴ�Ϊ9�ľ�ֵ�˲�');
subplot(3,2,6);imshow(uint8(e));title('��С����ƽ���˲�');
