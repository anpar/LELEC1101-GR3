% INPUT :
% * Vmin et Vmax : amplitude minimale et maximale du signal
% * T : periode du signal
% * anim : si true, affiche l'animation du signal, si false,
% affiche juste le resultat final
% * pauseDuration : temps de la pause pour l'animation
% * limit : limite du nombre k
function [] = CheckQuestion1(Vmin,Vmax,T,anim, pauseDuration, limit)
t = linspace(0,4*T,1000);
u = zeros(1,1000);
w = 2*pi/T;
for k=1:limit;
    u = u + 2/pi^2*(Vmax-Vmin)*1/k^2*(1-(-1)^k)*cos(k*w*t);
    %u = u + (8/(T^2 *w^2*k^2))*(Vmax-Vmin)*(1-((-1)^k))*cos(k*w*t);
    if anim == true
        plot (t,u);  
        str = sprintf('k = %d/%d',k,limit);
        title(str)
        pause(pauseDuration);
    end
end
if anim == false 
    % Normal plot of the triangular signal
    plot(u,t)
    % Plot of the output of the non linear system.
    % For V = 2, output is a real sinus for s > 2.3.
    % We need to find and explanation.
    %plot(t,u-(u.^3)./(2*(2.4)^2))
    xlabel('amplitude [V]') 
    ylabel('temps [s]')
end
end
