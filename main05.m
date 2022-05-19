%%%%
clear all
  load xx

 

[Mcorr05]=R05(xx)

[i,j]=find(Mcorr05>0.25);

dd=length(i);
res=[];

for iii=1:dd

tt=[i(iii),j(iii),Mcorr05(i(iii),j(iii))];
res=[res;tt];
end

res