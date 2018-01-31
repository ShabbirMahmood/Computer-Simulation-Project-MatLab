% Assignment-2.3 Discontinuous Signal
t = 0:1:50;                % Time vector ranges from 0 to 50 seconds 
x = zeros(length(t));      % Initializing x vector
for i=1:length(t)      
    if sin(t(i)) >= 0      % If sin(t) is positive
        x(i) = sin(t(i));     
     elseif sin(t(i)) < 0  % If sin(t) is negative
         x(i) = 0; 
     
    end
end
plot(t,x);
xlabel('Time(Seconds)');
ylabel('x(t)');
title('Discontinious Signal');