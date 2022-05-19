function [Mcorr06]=R06(XX)

[n,p]=size(XX);
Mcorr06=zeros(n,n);

for iii=1:n-1
    for jjj=iii+1:n
        x=XX(iii,:);
        y=XX(jjj,:);
     Mcorr06(iii,jjj)=x*y'/(sum(x.^2)+sum(y.^2)-x*y');     
    end
end