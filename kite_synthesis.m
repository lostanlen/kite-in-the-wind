source_path = 'media/kite_16kmono.wav';

[full_source_waveform, sample_rate] = audioread_compat(source_path);

%%
N = 131072;
signal = full_source_waveform(10^6 + (1:N));

%%
signal_ft = fft(signal);
signal_ft_masked = signal_ft;
signal_ft_masked(1:1830) = 0;
signal_ft_masked(2000:end) = 0;
signal_masked = real(ifft(signal_ft_masked));
plot(abs(signal_ft(1000:2000)));
%%
plot(signal_masked);
soundsc(signal_masked, sample_rate);