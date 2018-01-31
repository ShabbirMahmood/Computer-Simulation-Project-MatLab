% Assignment-2.2 SNR of Noisy Signal
row = 2;
column = 2;

Fs = 1000;       % Sampling Frequency
T = 1/Fs;        % Samle Time
L = 1000;         
f = 3;
t = (0:L-1)*T; 

Signal = 1*sin(2*pi*f*t);     % Main Signal
Noise = wgn(1,1000,0);        % Gaussian Noise

X = Signal + Noise;           % Mixing Noise with Main Signal

subplot(row,column,1);
plot(t,Signal);
xlabel('Time(Seconds)');
ylabel('Amplitude');
title('Signal');

subplot(row,column,2);
plot(t,Noise);
xlabel('Time(Seconds)');
ylabel('Amplitude');
title('Gaussian Noise');

LS = length(Signal);               % Lenngth of Main Signal
Power_Signal=(norm(Signal)^2)/LS;  % Power of Main Signal

LN = length(Noise);                % Length of Noise Signal
Power_Noise=(norm(Noise)^2)/LN;    % Power of Noise Signal

SNR = 20*log10(Power_Signal/Power_Noise);  % SNR Calculation

caption = sprintf('SNR of the Noisy Sihnal: %f dB',SNR);

subplot(row,column,3);
plot(t,X);
xlabel('Time(Seconds)');
ylabel('Amplitude');
title(caption);

% http://www.gaussianwaves.com/2013/12/computation-of-power-of-a-signal-in-matlab-simulation-and-verification/



