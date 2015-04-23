figure();
xlim([0 10])
vin = linspace(0,10,1000); % en volt
f = vin*1000;

% Mesures
vinmes = [0.5 1 1.4 2 2.5 3 3.48 4 4.52 5 5.52 6 6.52 7 7.52 8 8.5 9 9.5 10];
fmes = [0.426 0.949 1.43 1.99 2.51 3.03 3.53 4.068 4.609 5.102 5.63 6.112 6.658 7.13 7.644 8.135 8.61 9.11 9.6 10.04]*1000;

plot(vinmes,fmes, '+g'); hold on;
plot(vin,f); grid;
xlabel('V_{in} [V]')
ylabel('fréquence [Hz]')