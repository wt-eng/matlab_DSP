function [y,ny]=convwthn(x,nx,h,nh)
%�������޳����еľ�����Ҹ���λ������
%y,ny����������������λ������  
nys=nx(1)+nh(1) %��ʼλ��
nyf=nx(end)+nh(end) %��ֹλ��
y=conv(x,h)  %����matlab�Դ�����conv������ 
ny=nys:nyf