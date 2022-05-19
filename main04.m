%%%%
clear all
  load xx

 

[Mcorr04]=R04(xx)

[i,j]=find(Mcorr04>0.5235);

dd=length(i);
res=[];

for iii=1:dd

tt=[i(iii),j(iii),Mcorr04(i(iii),j(iii))];
res=[res;tt];
end

res