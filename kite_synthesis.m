source_path = 'kite_original.wav';

[full_source_waveform,sample_rate] = audioread_compat(source_path);
N = 65536;
source_waveform = full_waveform(1:N);