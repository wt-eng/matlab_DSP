%����ѭ���۵�����
%�������޳�����xn�������������ԶԱ���-n����N��������
%x(-n)=x(0),    n=0
%     =x(N-n),  1<=n<=N-1
x=[3,4,5,6,7];N=10
x=[x,zeros(1,N-numel(x))];nx=0:N-1
y=x(mod(-nx,N)+1)
subplot(2,1,1)
stem(nx,x)
subplot(2,1,2)
stem(nx,y)