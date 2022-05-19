%%%%
clear all
  load xx

 

[Mcorr07]=R07(xx)

[i,j]=find(Mcorr07>0.972);

dd=length(i);
res=[];

for iii=1:dd

tt=[i(iii),j(iii),Mcorr07(i(iii),j(iii))];
res=[res;tt];
end

res