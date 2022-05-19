%%%%
clear all
  load xx1

 

[Mcorr01]=R01(xx1)

[i,j]=find(Mcorr01>0.955);

dd=length(i);
res=[];

for iii=1:dd

tt=[i(iii),j(iii),Mcorr01(i(iii),j(iii))];
res=[res;tt];
end

res
figure
bar(xx1(33,:))
