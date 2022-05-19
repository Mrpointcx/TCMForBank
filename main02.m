%%%%
clear all
  load xx

 

[Mcorr02]=R02(xx)

[i,j]=find(Mcorr02>0.95);

dd=length(i);
res=[];

for iii=1:dd

tt=[i(iii),j(iii),Mcorr02(i(iii),j(iii))];
res=[res;tt];
end

res