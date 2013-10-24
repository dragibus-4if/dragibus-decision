function[]=graph_multi()
G = matrice_gain();

figure;
hold on;
for i = 1:4,
    p1 = G(1, 2);
    p2 = G(1, 3);
    p3 = G(1, 4);
    p4 = G(1, 5);
    
    for j=1:100,
        a = (j - 1) / 100.0;

        if i == 1,
            p1 = a * G(2, 2) + (1 - a) * G(1, 2);
            name = 'commercial';
            color = [1; 0; 0];
        elseif i == 2,
            p2 = a * G(3, 3) + (1 - a) * G(1, 3);
            name = 'atelier';
            color = [0; 1; 0];
        elseif i == 3,
            p3 = a * G(4, 4) + (1 - a) * G(1, 4);
            name = 'stock';
            color = [0; 0; 1];
        elseif i == 4,
            p4 = a * G(5, 5) + (1 - a) * G(1, 5);
            name = 'personnel';
            color = [0; 0; 0];
        end

        X(1, j) = j;
        [q, B(1, j)] = multi(p1, p2, p3, p4);
    end
    %if i ~= 2,% && i ~= 2 && i ~= 4,
    plot(X, B, 'Color', color, 'DisplayName', name);
    %end
end

hold off;
legend('show');

%plot([0.7*benefMax 0.7*benefMax], [0 600]);
%plot([0.9*benefMax 0.9*benefMax], [0 600]);
%plot([5535 5535], [0 100]);
%plot(benef,482.4);
end