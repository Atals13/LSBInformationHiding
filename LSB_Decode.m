%% ��ȡLSB�㷨Ƕ���ˮӡ
function OutputImage = LSB_Decode(InputImage,m,n)
% InputImageΪ����ˮӡ��ͼ�� ��mΪҪ��ȡˮӡ���У�nΪҪ��ȡˮӡ����
% zeros(m,n)����һ��m*n��ȫ0����
% bitget(InputImage(i,j),1)��ȡͼ��InputImage��һ�����ص������ֵ
% ��������ֵ�ö����Ʊ�ʾ��bitget(InputImage(i,j),1)�е�1��ʾ��ȡ���λ��ֵ
OutputImage = zeros(m,n);
for i = 1:m
    for j = 1:n
        if bitget(InputImage(i,j),1) == 1
            OutputImage(i,j) = 255;
        else
            continue;
        end
    end
end
