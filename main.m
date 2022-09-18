clc;%��������д���
close all;%�ر����д򿪵Ĵ���
clear all;%��������ռ�

%��ȡ����ͼ�񲢽���ת��Ϊ�Ҷ�ͼ
CarrierImg = rgb2gray(imread('lena.bmp')); 
% ��ȡ����ͼ�����M����N
[M, N] = size(CarrierImg);
% ��ʾ����ͼ��
figure, imshow(CarrierImg);
title('����ͼ��');

%��ȡҪ���ص�ˮӡͼ�񲢽���ת��Ϊ�Ҷ�ͼ
BinImg = rgb2gray(imread('SmallPig.bmp'));
% ��ȡˮӡͼ�����m����m
[m, n] = size(BinImg);
% �Ƚ�����ͼ���ˮӡͼ����ˮӡͼ����к��о�С������ͼ�񣬲�������
% ��֮������ˮӡͼ����л��д�������ͼ����ˮӡͼ�����������ͼ��һ������Ƕ��
if m>M || n>N
    BinImg = imresize(BinImg,[M,N]);
end
% ��ˮӡͼ����ж�ֵ��������ת��Ϊdouble,��ֵ����ˮӡͼƬ���е���
% imbinarize(BinImg,0.90)��0.90Ϊ��ֵ��BinImgת��Ϊ��ֵͼ��
% ����0.90�ı���߼�1����ɫ����С��0.90�ı���߼�0(��ɫ)
BinImg = im2double(BinImg);
BinImg = imbinarize(BinImg,0.90);
% ��ʾ������ˮӡͼ��
figure, imshow(BinImg);
title('��Ҫ�����ض�ֵ��ͼ��');

%% Ƕ��ˮӡ
WatermarketImg = LSB_Encode(CarrierImg,BinImg,M,N,m,n);
figure,imshow(WatermarketImg);
imwrite(WatermarketImg,'WatermarketImg.bmp');

%% ��ȡˮӡ
% Image = imread('WatermarketImg.bmp');
% BinImage = LSB_Decode(Image,m,n);
% imshow(BinImage);
