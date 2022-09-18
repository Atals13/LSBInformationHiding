%% LSB�㷨ʵ��Ƕ��ͼƬˮӡ
function CarrierImg = LSB_Encode(CarrierImg,BinImg,M,N,m,n)
% CarrierImgΪ����ͼ�� ��BinImgΪ��ֵ�����Ҫ���ص�ˮӡͼ��
% MΪ����ͼ�����,NΪ����ͼ�����,mΪˮӡͼ����У�nΪˮӡͼ�����
% bitget(CarrierImg(i,j),1)��ȡͼ��CarrierImg��һ�����ص������ֵ
% ��������ֵ�ö����Ʊ�ʾ��bitget(CarrierImg(i,j),1)�е�1��ʾ��ȡ���λ��ֵ
% ע�⣡����ˮӡͼ���m*n ҪС�ڵ�������ͼ��� M*N
% ��m<=M,n<=N
if (m <= M && n <= N)
    for i = 1:m
        for j = 1:n
            if BinImg(i,j) == bitget(CarrierImg(i,j),1)
                continue;
            elseif BinImg(i,j) == 0 && bitget(CarrierImg(i,j),1) ==1
                CarrierImg(i,j) = CarrierImg(i,j)-1;
            elseif BinImg(i,j) == 1 && bitget(CarrierImg(i,j),1) ==0
                CarrierImg(i,j) = CarrierImg(i,j)+1;
            end
        end
    end    
else
    fprintf('BinImg is too big than CarrierImg!!!')
end    