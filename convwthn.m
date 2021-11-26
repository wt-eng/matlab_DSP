function [y,ny]=convwthn(x,nx,h,nh)
%计算有限长序列的卷积并且给出位置向量
%y,ny代表输出向量和输出位置向量  
nys=nx(1)+nh(1) %起始位置
nyf=nx(end)+nh(end) %终止位置
y=conv(x,h)  %调用matlab自带函数conv计算卷积 
ny=nys:nyf