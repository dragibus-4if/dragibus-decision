function[resX]=graph_personnel(pas)
hold on
benefMax = 6473.2;
resX=zeros(0);

for i=1:pas
benef(1,i)=((i)/pas)*benefMax;
prodTot(1,i) = sum(personnel((i/pas)*benefMax));

end

plot(benef,prodTot,'k')
plot([0.7*benefMax 0.7*benefMax], [0 600]);
plot([0.9*benefMax 0.9*benefMax], [0 600]);
plot([5535 5535], [0 600]);
plot(benef,482.4);
end