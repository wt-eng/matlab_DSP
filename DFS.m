% %利用matlab计算DFS
% n=[0:1:N-1];k=[0:1:N-1] %设定n和k的行向量
% WN=exp(-j*2*pi/N)       %设定WN因子
% nk=n'*k   %产生的整数方阵恰好为W矩阵的指数部分
% WNnk=WN.^nk  %求出W矩阵
% Xk = WNnk*xn  %求出离散傅里叶级数系数


xd=fft([2,-1,1,1])
plot([0:3]*2*pi/4,abs(xd),'o')
