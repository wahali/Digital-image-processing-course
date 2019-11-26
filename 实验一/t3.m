imgname = '3.tif';
pre=imread(imgname);
a = pre;
%a =rgb2gray(a);
db = double(a);
m = imadjust(a,[],[0.5;1]);%图像变亮
n = imadjust(a,[],[0;0.5]) ;%图像变暗
g=255-a;%负片效果
subplot(4,2,1);imshow(pre);title('原图像');
subplot(4,2,2);imshow(m);title('图像变亮');
subplot(4,2,3);imshow(n);title('图像变暗') ;
subplot(4,2,4);imshow(g);title('负片效果') ;
%对数变换
%v = 10;
%p1 = log2(1+db.*v)/log2(db+1);
p1 = log(1+db)/0.065;
%v = 200;
%p2 = log2(1+db.*v)/log2(db+1);
p2 = log(1+db)/0.035;
p1(p1>255) = 255;
p2(p2>255) = 255;
p1 = uint8(p1);
p2 = uint8(p2);
%p2 = log(v+a)/0.05;
subplot(4,2,5);imshow(uint8(p1));xlabel('log(1+db)/0.065');
subplot(4,2,6);imshow(uint8(p2));xlabel('log(1+db)/0.035');
%幂指变换
y1 = 255*(db/255).^2.5;
y2 = 255*(db/255).^0.4;
y1(find(y1>255)) = 255;
y2(find(y2>255)) = 255;
y1 = uint8(y1);
y2 = uint8(y2);
subplot(4,2,7);imshow(uint8(y1));xlabel('255*(x/255)^(2.5)');
subplot(4,2,8);imshow(uint8(y2));xlabel('255*(x/255)^(0.4)');