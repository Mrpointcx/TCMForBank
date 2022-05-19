function [Mcorr04]=R04(XX)

[n,p]=size(XX);
Mcorr04=zeros(n,n);

for iii=1:n-1
    for jjj=iii+1:n
        x=XX(iii,:);
        y=XX(jjj,:);
        dm=sum(abs(x-y));
     Mcorr04(iii,jjj)=1/(1+dm);     
    end
end