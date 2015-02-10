% INPUT : s, valeur du parametre de la
% fonction non lineaire.
% OUTPUT : un graphe de la fonction entre -10 et 10
% avec 1000 points.
function [] = PlotQuestion2(s)
    x = linspace(-10,10,1000);
    h = x./(sqrt((x/s).^2+1));
    plot(x,h)
    xlabel('input')
    ylabel('output')
end

% Code used to create the figure in the report
% figure
% subplot(2,2,1)
% PlotQuestion2(1)
% subplot(2,2,2)
% PlotQuestion2(2)
% subplot(2,2,3)
% PlotQuestion2(3)
% subplot(2,2,4)
% PlotQuestion2(4)
