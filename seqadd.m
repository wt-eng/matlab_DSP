function [y,n]=seqadd(x1,n1,x2,n2)
%序列的加法
%n1,n2分别是x1和x2的初始位置
n1=0:10
n2=-5:5
x1=ones(1,11)
x2=x1
n=min(min(n1),min(n2)):max(max(n1),max(n2))  %确定位置向量
y1=zeros(1,length(n))
y2=y1
y1(find((n>=min(n1)&n<=max(n1))==1))=x1        %把x1延拓到n上生成y1
y1(find((n>=min(n2)&n<=max(n2))==1))=x2        %把x2延拓到n上生成y2
y=y1+y2
