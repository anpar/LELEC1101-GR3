% INPUT :
% * Vmin et Vmax : amplitude minimale et maximale du signal
% * T : période du signal
% * anim : si true, affiche l'animation du signal, si false,
% affiche juste le résultat final
% * pauseDuration : temps de la pause pour l'animation
% * limit : limite du nombre k
function [] = CheckQuestion1(Vmin,Vmax,T,anim, pauseDuration, limit)
t = linspace(0,4*T,1000);
u = zeros(1,1000);
w = 2*pi/T;
for k=1:limit;
    u = u + (8/(T^2 *w^2*k^2))*(Vmax-Vmin)*(1-((-1)^k))*cos(k*w*t);
    if anim == true
        plot (t,u);  
        str = sprintf('k = %d/%d',k,limit);
        title(str)
        pause(pauseDuration);
    end
end
if anim == false 
    plot(t,u)
    ylabel('amplitude [V]') 
    xlabel('temps [s]')
end
end
