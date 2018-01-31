% Assignment-1.3 Average Temperature Graph

y=[18.1 21.0 25.9 30.3 30.7 30.1 28.4 28.1 28.2 27.0 23.3 19.0]
str = {'Jan';'Feb';'Mar';'Apr';'May';'Jun';'Jul';'Aug';'Sep';'Oct';'Nov';'Dec'};
 
plot(y)
set(gca, 'XTickLabel',str, 'XTick',1:numel(str))
grid on;
ylabel('Average Temperature');
xlabel('Month');
title(' Average Temperature Graph (Rajshahi)');

%https://www.yr.no/place/Bangladesh/Rajshahi/Rajshahi/statistics.html
