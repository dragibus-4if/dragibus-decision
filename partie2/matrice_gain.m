function[G] = matrice_gain()
Xcomptable = [ 235.6250; 98.3929; 101.3393; 22.6786; 0.000; 50.6250 ];
Xcommercial = [ 0 ; 206.03 ; 43.26 ; 14.70 ; 70.97 ; 163.61 ];
Xatelier = [0.0000; 252.5000; 195.0000; 0.0000; 0.0000; 101.2500];
Xstocks = 1.0e-16 * [0.5614; 0.2369;0.1140;0.0365;0.0028;0.2099];
Xpersonnel = [0.0000; 0.0000; 135.6644 ;0.0000; 0.0000; 0.0000];

Fcomptable = [-13.5667; -7.98333; -15.9333; -16.4333; -23.8167; -9.95];
Fcommercial = [-1; -1; -1; 1; 1; 1];
Fatelier = [-1; -1; -1; -1; -1; -1 ];
Fstocks = [-5; -4;  -6; -8; -9; -4];  
Fpersonnel = [-26; -15; -0; -5; -10; -35];

Fs = [Fcomptable, Fcommercial, Fatelier, Fstocks, Fpersonnel];
Xs = [Xcomptable, Xcommercial, Xatelier, Xstocks, Xpersonnel];

G = -transpose(Xs)*Fs;

end