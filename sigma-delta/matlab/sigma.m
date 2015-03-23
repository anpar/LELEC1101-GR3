figure();
xlim([-15 15])
ylim([0 80000])
vref = linspace(-15,15,1000);
Vee = -15;
E = 15;
C1 = 6e-9;
R1 = 5000;
R2 = 50000;
R3 = 10000;
R4 = 20000;
R6 = 20000;
K = 1/(R1*C1);
DV = R1/R2 * E;
VREF = -R3*(vref/R4 + Vee/R6);
f = -K/DV * (VREF.*(VREF-E))/E;
plot(vref,f)
% Pas mal mais à refaire avec E = 13.5 (plus proche de la réalité)