%序列循环折叠性质
%对于有限长序列xn利用隐含周期性对变量-n进行N求余运算
%x(-n)=x(0),    n=0
%     =x(N-n),  1<=n<=N-1
x=[3,4,5,6,7];N=10
x=[x,zeros(1,N-numel(x))];nx=0:N-1
y=x(mod(-nx,N)+1)
subplot(2,1,1)
stem(nx,x)
subplot(2,1,2)
stem(nx,y)