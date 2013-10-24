function[resX]=graph_personnel(pas)
hold on
benefMax = 6473.2;
resX=zeros(0);

for i=1:pas
benef(1,i)=((i)/pas)*benefMax;
planProd = personnel((i/pas)*benefMax, [26; 15; 0; 5; 10; 35]);
tempsM1(1, i) = sum(planProd.*[11; 15; 0; 5; 0; 10]);
tempsM5(1, i) = sum(planProd.*[15; 0; 0; 0; 10; 25]);
tempsTot(1, i) = tempsM1(1, i) + tempsM5(1, i);
prodTot(1,i) = sum(planProd);

end

subplot(1, 2, 1), plot(benef,prodTot,'b', [0.7*benefMax 0.7*benefMax], [0 600], 'k', [5761 5761], [0 600], 'k', [6182 6182], [0 600],'k', benef,482.4, 'r');
%plot([0.7*benefMax 0.7*benefMax], [0 600], 'b');
%plot([0.9*benefMax 0.9*benefMax], [0 600], 'b');
%plot([5535 5535], [0 600],'r');
%plot(benef,482.4, 'b');
subplot(1, 2, 2), plot(benef,tempsM1, 'b', benef,tempsM5, 'r', benef, tempsTot, 'g', [0.7*benefMax 0.7*benefMax], [0 10000], 'k', [5761 5761], [0 10000], 'k', [6182 6182], [0 10000],'k'), legend('machine 1','machine 5', 'temps total');
%plot(benef,tempsM5, 'g');

end