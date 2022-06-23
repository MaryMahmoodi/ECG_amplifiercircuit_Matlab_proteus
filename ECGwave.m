
% Compressive sensing Theory For ECG signal
%example the signal is sparse in time domain and random samples
%are taken in frequency domain.
clc;
close all;
clear all;

load ('ECG3.dat');
%sampling frequency
fs=200;

ECG4=[];
% increasing the length of ECG wave inorder to see the signal in proteus
for i=1:100
    ECG4=[ECG4; ECG3];
end
% adding random noise
ECG4=ECG4+0.3*randn(size(ECG4));
% save the ECG signal in .wav format readable by proteus
wavwrite(0.7*ECG4./max(ECG4),'ECG4.wav');

time = [0: (length(ECG4)-1)]./fs; % time samples (s) 
figure;plot(time(1:500), ECG4(1:500));
xlabel('time(s)');
ylabel('voltage (uV)')


