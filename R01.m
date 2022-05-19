 

function [Mcorr01]=R01(XX)

[n,p]=size(XX);
Mcorr01=zeros(n,n);

for iii=1:n-1
    for jjj=iii+1:n
        x=XX(iii,:);
        y=XX(jjj,:);
     Mcorr01(iii,jjj)=(x-mean(x))*(y-mean(y))'/(sqrt(sum((x-mean(x)).^2))*sqrt(sum((y-mean(y)).^2)));     
    end
end
