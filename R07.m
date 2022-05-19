function [Mcorr07]=R07(XX)

[n,p]=size(XX);
Mcorr07=zeros(n,n);

for iii=1:n-1
    for jjj=iii+1:n
        x=XX(iii,:);
        y=XX(jjj,:);
    L1=(x>0);
    L2=(y>0);
        a=sum((L1-L2)>0);
        b=sum((L2-L1)>0);   
        c=sum((L1+L2)==2);
        Dixson=1+(1-c/(a+b+c))*sum((x-y).^2);
         Mcorr07(iii,jjj)=1/Dixson;
    end
end