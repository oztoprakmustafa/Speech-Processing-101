% This file read audio files in various formats


% read .wav file
[x,fs] = audioread('voice.wav');



% play audio files
sound(x,fs);   %one method

% play audio files by another method
player = audioplayer(x,fs);
play(player);
pause(5);
pause(player);
pause(5);
stop(player);

% plot signal
plot(x); title('Input Sound File');
