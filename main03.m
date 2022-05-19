%%%%
clear all
  load xx

 

[Mcorr03]=R03(xx)

[i,j]=find(Mcorr03>0.7678);

dd=length(i);
res=[];

for iii=1:dd

tt=[i(iii),j(iii),Mcorr03(i(iii),j(iii))];
res=[res;tt];
end

res