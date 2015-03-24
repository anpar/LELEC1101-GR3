figure();
xlim([-15 15])
vref = linspace(-15,15,1000);
Vee = -15;
% On tient compte de la non-idéalité
% E neq Vcc.
E = 13.5;
% On utilise uniquement des valeurs de
% de la série de Renard E12.
C1 = 1.8e-9 + 100e-12;
R1 = 10000;
R2 = 82000+47000+5600;
R3 = 22000;
R4 = 47000+1500;
R6 = 47000+1500;
K = 1/(R3*C1)
DV = R1/R2 * E;
VREF = -R3*(vref/R4 + Vee/R6);
f = -K/DV * (VREF.*(VREF-E))/E;
plot(vref,f); grid;