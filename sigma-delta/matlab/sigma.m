figure();
xlim([-15 15])
vref = linspace(-15,15,1000);
Vee = -15; %-14.63;
% On tient compte de la non-idéalité
% E neq Vcc.
E = 13.5;%13.62;
% On utilise uniquement des valeurs de
% de la série de Renard E12.
% C1 : deux capa en parallèle, diffère de 0.03
% par rapport à la théorie.
C1 = 18e-9;%1/(1/(3.3e-9) + 1/(4.7e-9)) ;
R1 = (3900*(100+2200))/(3900+100+2200);%10000;
R2 = 10000;%82000+47000+5600;
R3 = 1200;%22000;
R4 = 2666.6666;%47000+1500;
R6 = 2666.6666;%47000+1500;
K = 1/(R3*C1)
DV = R1/R2 * E;
VREF = -R3*(vref/R4 + Vee/R6);
f = -K/DV * (VREF.*(VREF-E))/E;

% Mesures
vrefmes = [-10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 7 8 9 10 10.6 14.12];
fmes = [37.7e3 43.8e3 47.6e3 51.5e3 54.8e3 57.9e3 59.9e3 61.30e3 62.2e3 62.4e3 62.5e3 76e3 74.4e3 72e3 68.8e3 65e3 60.5e3 55.15e3 49.2e3 42.5e3 35.5e3 28.9e3 0];

plot(vrefmes,fmes, '+g'); hold on;
plot(vref,f); grid;
xlabel('V_{ref}')
ylabel('fréquence')