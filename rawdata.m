clear all
 load cc.txt;
 
 load ss2.txt;
xx0=cc*[ss2']
for iii=1:128
    xx1(iii,:)= xx0(iii,:)/(sqrt( xx0(iii,:)* xx0(iii,:)'));
end

plot(xx1')

save xx1 xx1
 
whos

figure
bar(xx1(4,:))


