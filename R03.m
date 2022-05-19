function [Mcorr03]=R03(XX)

[n,p]=size(XX);
Mcorr03=zeros(n,n);

for iii=1:n-1
    for jjj=iii+1:n
        x=XX(iii,:);
        y=XX(jjj,:);
        de=sqrt(sum((x-y).^2));
     Mcorr03(iii,jjj)=1/(1+de);     
    end
end