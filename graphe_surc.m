function[]= graphe_surc(sc,sd)


C=(1/9)*[0 7 8 6 7;
   2 0 6 6 7;
   3 3 0 3 7;
   3 6 6 0 7;
   3 3 8 2 0];

D=(1/10)*[10 2.4 0.8 2.4 1.2;
          1.2 10 1.2 3.6 0.6;
          3 2.4 10 3 1.2;
          1.8 4.2 1.8 10 3;
          3 2 0.8 3 10];      

vect = ['a' 'b' 'd' 'e' 'h'];

fid = fopen('graph.dot','w');
fprintf(fid,'# sc = %f\n # sd = %f\n',sc,sd);
fprintf(fid,'graph G {\n');
fprintf(fid,'a;\nb;\nd;\ne;\nh;\n');

for i=1:5
 for j=1:5
     
     if((C(i,j)>=sc)&&(D(i,j)<=sd))
         fprintf(fid,'%s -> %s;\n',vect(i),vect(j));
     end
     
 end
end

fwrite(fid,'}');
end