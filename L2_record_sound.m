%% This file record sound from microphone
 

close all; clear all;

% get device information
dev = audiodevinfo;
fs=8000,
nbits=8;
% create recorder object
rec = audiorecorder(fs, nbits, 1);

% start recording
disp('start speaking');
% record(rec, 5); % will record for 5sec. for this command pause needs to be added
recordblocking(rec, 2);

% stop recording
disp('Stop recording');

% Play recorded sound
play(rec);

% get audio data
y = getaudiodata(rec);
audiowrite('good.wav',y,fs);
% plot the sound
plot(y);




