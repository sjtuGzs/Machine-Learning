clc
clear


    I=imread('I:\GZS\雷达学报\Yellow River\CODE\K-MEANS能运行代码\14.png');
    I = double(rgb2gray(I));
    I=imcrop(I);
    image=double(I);
    image=image(:,:,1);
    figure
    imshow(image,[]);
    [s1,s2,D] = size(image);
    % 矩阵矢量化
    X = reshape(image, (s1*s2), D);
    % 聚类数
    k=3;
    % K-means聚类方法
    idx = KMeansClustering(X, k);

    % 将矢量变成矩阵
    idx = reshape(idx, s1, s2);
    figure
    imshow(idx,[]);
    toc
    idx(idx==1)=0;
    idx(idx==2)=255;
    imshow(idx);
    imwrite(uint8(idx),'Kmeans最终分割.png');



%%给图像加颜色
seg1=double(x____);
[row,col]=size(seg1);
for m=1:row
    for n=1:col
        if seg1(m,n)==1
            seg1(m,n,1)=0;
            seg1(m,n,2)=0;
            seg1(m,n,3)=255;
        end
        if seg1(m,n)==2
            seg1(m,n,1)=255;
            seg1(m,n,2)=255;
            seg1(m,n,3)=0;
        end
        if seg1(m,n)==3
            seg1(m,n,1)=0;
            seg1(m,n,2)=255;
            seg1(m,n,3)=0;
        end
        if seg1(m,n)==4
            seg1(m,n,1)=255;
            seg1(m,n,2)=0;
            seg1(m,n,3)=0;
        end
        if seg1(m,n)==5
            seg1(m,n,1)=230;
            seg1(m,n,2)=230;
            seg1(m,n,3)=200;
        end
        if seg1(m,n)==6
            seg1(m,n,1)=200;
            seg1(m,n,2)=0;
            seg1(m,n,3)=200;
        end
        if seg1(m,n)==7
            seg1(m,n,1)=85;
            seg1(m,n,2)=0;
            seg1(m,n,3)=0;
        end
    end
end
imshow(seg1);
imwrite(seg1,'裁剪标记图像彩图.png');

for row=1:10
    for col=1:10
        if (aa(row,col)==1)
            aa(i,j)=4;
        end
    end
end


idx11=double(x____);
imshow(idx11,[]);

class_img=idx11;
aaa=class_img;
[row5,col5]=size(class_img);
for ii=1:row5
    for jj=1:col5
        dingwei=aaa(ii,jj);
        if dingwei==1
            aaa(ii,jj)=1;
        end
        if dingwei==2
            aaa(ii,jj)=2;
        end
        if dingwei==3
            aaa(ii,jj)=3;
        end
        if dingwei==4
            aaa(ii,jj)=3;
        end
        if dingwei==5
            aaa(ii,jj)=3;
        end
        if dingwei==6
            aaa(ii,jj)=4;
        end
        if dingwei==7
            aaa(ii,jj)=4;
        end
        if dingwei==8
            aaa(ii,jj)=4;
        end
        if dingwei==9
            aaa(ii,jj)=4;
        end
    end
end
figure;imshow(aaa,[]);


imwrite(uint8(aaa),'改进的OG-MRF4类.png');
