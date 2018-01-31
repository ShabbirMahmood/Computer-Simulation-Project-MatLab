% Assignment-3.1 Population Calculation P=P0*e^(r*t) Here e=2, r=1/d

t = [5 10 15];          % Time Vector
P0 = 50;                % Initial Population
d = 20;                 % Doubling Time in Years
P = P0*2.^(t/d);        % Formula for Population Calculation

bar(t,P);
xlabel('Time (Years)');
ylabel('Population (Million)');
title('Population Calculation');

for i = 1:length(t)
    label(i) = text(t(i),P(i),num2str(P(i))); % Label Position Calculation
end

set(label,'Horizontalalignment','center','verticalalignment','bottom') ; % Setting Label On the Bar
