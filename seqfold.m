function [y,ny]=seqfold(x,nx)
%实现序列的翻折
%x代表序列    nx代表序列的位置向量
y=fliplr(x)
ny=-fliplr(nx)