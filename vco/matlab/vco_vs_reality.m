figure();
xlim([0 10])
vin = linspace(0,10,1000); % en volt
f = vin*1000;

% Mesures
vinmes = [0, 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 2 3 4 5 6 7 8 9];
fmes = [0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 2 3 4 5 6 7 8 9]*1000;

plot(vinmes,fmes, '+g'); hold on;
plot(vin,f); grid;
xlabel('V_{in} [V]')
ylabel('fréquence [Hz]')