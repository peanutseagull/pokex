Music_UntitledSong:
	channel_count 4
	channel 1, Music_UntitledSong_Ch1
	channel 2, Music_UntitledSong_Ch2
	channel 3, Music_UntitledSong_Ch3
	channel 4, Music_UntitledSong_Ch4

Music_UntitledSong_Ch1:
	tempo 256
	volume 7, 7
	note_type 12, 15, 8
.mainLoop:
	rest 6
	note_type 12, 15, 6
	octave 3
	vibrato 0, 5, 0
	note F_, 2
	note A_, 2
	octave 4
	note F_, 2
	note E_, 8
	note D_, 4
	note C_, 8
	note F_, 4
	octave 3
	note F_, 8
	note A#, 4
	note A_, 12
	note G_, 4
	note A_, 4
	vibrato 5, 5, 5
	note A#, 4
	octave 4
	note C_, 16
	rest 16
	rest 16
	octave 8
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 8
	sound_loop 0, .mainLoop

Music_UntitledSong_Ch2:
	note_type 12, 15, 8
.mainLoop:
	octave 3
	note C_, 12
	rest 16
	octave 8
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 4
	sound_loop 0, .mainLoop

Music_UntitledSong_Ch3:
	note_type 12, 1, 0
.mainLoop:
	octave 2
	note A_, 12
	octave 8
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 4
	sound_loop 0, .mainLoop

Music_UntitledSong_Ch4:
	toggle_noise 0
	drum_speed 12
.mainLoop:
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	sound_loop 0, .mainLoop
