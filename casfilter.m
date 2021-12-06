function y=casfilter(b0,B,A,x)
%IIR级联型数字滤波器
%B,A均为K行3列的矩阵
%b0为增益系数
%x为输入  filter为IIR的直接形式
[K,L]=size(B);
N=length(x);
w=zeros(K+1,N)
w(1,:)=x
for i=1:1:K
    w((i+1),:)=filter(B(i,:),A(i,:),w(i,:))
end
y=b0*w((K+1),:)