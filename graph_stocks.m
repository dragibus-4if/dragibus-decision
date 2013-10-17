function[resX]=graph_stocks(pas)
hold on
benefMax = 6473.2;
resX=zeros(0);

for i=1:pas
    benef(1,i)=((i)/pas)*benefMax;
    prodTot(1,i) = sum(stocks((i/pas)*benefMax));
     
end

plot(benef,prodTot,'k')

end