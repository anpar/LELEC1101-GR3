figure();
xlim([-15 15])
vref = linspace(-15,15,1000);
Vee = -15; %-14.63;
% On tient compte de la non-idéalité
% E neq Vcc.
E = 13.62; %13.5
% On utilise uniquement des valeurs de
% de la série de Renard E12.
% C1 : deux capa en parallèle, diffère de 0.03
% par rapport à la théorie.
C1 = 1/(1/(3.3e-9) + 1/(4.7e-9)) ;
R1 = 10000;
R2 = 82000+47000+5600;
R3 = 22000;
R4 = 47000+1500;
R6 = 47000+1500;
K = 1/(R3*C1)
DV = R1/R2 * E;
VREF = -R3*(vref/R4 + Vee/R6);
f = -K/DV * (VREF.*(VREF-E))/E;

% Mesures
vrefmes = [-14.62 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 7 8 9 10 10.6 14.12];
fmes = [0 50.7e3 57.2e3 62.05e3 66.2e3 69.73e3 72.57e3 74.7e3 76.30e3 77.2e3 77.50e3 77.1e3 76e3 74.4e3 72e3 68.8e3 65e3 60.5e3 55.15e3 49.2e3 42.5e3 35.5e3 28.9e3 0];

plot(vrefmes,fmes, '+g'); hold on;
plot(vref,f); grid;
xlabel('V_{ref}')
ylabel('fréquence')