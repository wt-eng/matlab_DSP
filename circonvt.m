function y=circonvt(x1,x2,N)
%2021/11/30   DFT循环卷积
%数字信号处理—matlab释义与实现中采用的方法
%建立循环序列，直接进行循环卷积运算
x1=[x1,zeros(1,N-length(x1))] %将x1长度扩展至N
x2=[x1,zeros(1,N-length(x2))] %将x2长度扩展至N
m=0:N-1
x2m=x2(mod(-m,N)+1)           %循环折叠
H=toeplitz(x2m,[0,x2(2:N)])   %产生托普利兹矩阵与清华数字信号处理第五版165页略有不同，是它的转置
y=x1*H
