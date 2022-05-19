function [Mcorr05]=R05(XX)

[n,p]=size(XX);
Mcorr05=zeros(n,n);

for iii=1:n-1
    for jjj=iii+1:n
        x=XX(iii,:);
        y=XX(jjj,:);
    L1=(x>0);
    L2=(y>0);
        a=sum((L1-L2)>0);
        b=sum((L2-L1)>0);
        
     Mcorr05(iii,jjj)=1/(1+a+b);     
    end
end