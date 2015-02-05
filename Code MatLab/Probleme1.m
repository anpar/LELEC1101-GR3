Vmin=-5;
Vmax=5;
T=2;
k=1;
a=0;
t=linspace(0,4*T,1000);
u=zeros(1,1000);
omega=2*pi/T;
for i=1:50;
    u1= (8/(T^2 *omega^2*i^2))*(Vmax-Vmin)*(1-((-1)^i))*cos(i*omega*t);
    u2 = u + u1;
    u=u2;
    plot (t,u);
    %hold on
    pause(0.1);
end
