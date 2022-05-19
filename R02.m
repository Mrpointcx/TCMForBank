function [Mcorr02]=R02(XX)

[n,p]=size(XX);
Mcorr02=zeros(n,n);

for iii=1:n-1
    for jjj=iii+1:n
        x=XX(iii,:);
        y=XX(jjj,:);
     Mcorr02(iii,jjj)=x*y'/(sqrt(sum(x.^2))*sqrt(sum(y.^2)));     
    end
end