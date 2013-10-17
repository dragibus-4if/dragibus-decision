function[Xpersonnel] = personnel(benef)

f = [26; 15; 0; 5; 10; 35];

A = [11 15 0 5 0 10;
     0 1 2 8 7 12;
     12 1 11 0 10 15;
     2 10 5 4 13 7;
     15 0 0 0 10 25;
     5 5 13 12 8 0;
     5 3 5 28 0 7;
     1 1 1 5 0 2;
     2 2 1 0 2 1;
     1 0 3 2 6 0
     -13.5667 -7.98333 -15.9333 -16.4333 -23.8167 -9.95];

b = [4800; 4800; 4800; 4800; 4800; 4800; 4800; 650; 820; 585; -benef];

%Aeq = zeros(8, 6);

%beq = zeros(10);

lb = transpose([0 0 0 0 0 0]);

Xpersonnel = linprog(f, A, b, [], [], lb);

end

% function[resX]=graph_personnel(pas)
% hold on
% benefMax = 6473.2;
% resX=zeros(0);
% 
% for i=1:pas
% benef(1,i)=((i)/pas)*benefMax;
% prodTot(1,i) = sum(personnel((i/pas)*benefMax));
% 
% end
% 
% plot(benef,prodTot,'k')
% 
% end