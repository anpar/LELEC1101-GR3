% INPUT : s, valeur du paramètre de la
% fonction non linéaire.
% OUTPUT : un graphe de la fonction entre -8 et 8
% avec 1000 points.
function [] = PlotQuestion2(s)
    x = linspace(-8,8,1000);
    h = x./(sqrt((x/s).^2+1));
    plot(x,h)
    xlabel('input')
    ylabel('output')
end
