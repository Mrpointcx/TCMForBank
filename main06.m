%%%%
clear all
  load xx

 

[Mcorr06]=R06(xx)

[i,j]=find(Mcorr06>0.91);

dd=length(i);
res=[];

for iii=1:dd

tt=[i(iii),j(iii),Mcorr06(i(iii),j(iii))];
res=[res;tt];
end

res