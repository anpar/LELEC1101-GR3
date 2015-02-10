function [] = CheckQuestion1(Vmin,Vmax,T,animation, pauseTime, limit)
k=1;
a=0;
t = linspace(0,4*T,1000);
u = zeros(1,1000);
omega = 2*pi/T;
for i=1:limit;
    u = u + (8/(T^2 *omega^2*i^2))*(Vmax-Vmin)*(1-((-1)^i))*cos(i*omega*t);
    if animation == true
        plot (t,u); 
        str = sprintf('k = %d/%d',i,limit);
        title(str)
        pause(pauseTime);
    end
end
if animation == false 
    plot(t,u)
    ylabel('amplitude [V]') 
    xlabel('temps [s]')
end
end
