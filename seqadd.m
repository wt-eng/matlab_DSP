function [y,n]=seqadd(x1,n1,x2,n2)
%���еļӷ�
%n1,n2�ֱ���x1��x2�ĳ�ʼλ��
n1=0:10
n2=-5:5
x1=ones(1,11)
x2=x1
n=min(min(n1),min(n2)):max(max(n1),max(n2))  %ȷ��λ������
y1=zeros(1,length(n))
y2=y1
y1(find((n>=min(n1)&n<=max(n1))==1))=x1        %��x1���ص�n������y1
y1(find((n>=min(n2)&n<=max(n2))==1))=x2        %��x2���ص�n������y2
y=y1+y2
