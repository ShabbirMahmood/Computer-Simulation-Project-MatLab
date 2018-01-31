% Assignment-2.1 Projectile Object's Range and Flight Time

velocity = (80*1.61*1000)/3600;   % Velocity(meter per second)
angle = (45*pi)/180;              % Angle (Radian)
g = (9.81);                       % Gravity(meter per second)
T = 2*velocity*sin(angle)/g;      % Time of Flight(Second)

t= 0:0.001: T;

X_Component = velocity * cos(angle);
Y_Component = velocity * sin(angle);

X = X_Component.*t;
Y = Y_Component.*t - (1/2)*g.*(t.^2);

plot(X,Y);
xlabel('Distance(Meter)');
ylabel('Height(Meter)');


Range = (velocity^2 * (sin(2*angle))) / (g)  % Range of the Projectile Object(meter)
Time = T                                     % Time of Flight(Second)
caption = sprintf('Projectile Objects Flight Time: %f Seconds & Distance Range: %f Meter',Time,Range);
title(caption);




%https://www.boundless.com/physics/textbooks/boundless-physics-textbook/two-dimensional-kinematics-3/projectile-motion-42/basic-equations-and-parabolic-path-226-10952/
