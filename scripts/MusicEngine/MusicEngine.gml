// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information



// Audio Priorities
enum SoundPriority
{
	none,
	bg_music,
	sound_FX
}

	/// @function ChangeMusic(BG_MusicTo,Rate)
	/// @description Change global.music.
	/// @param {index} BG_MusicTo Next Music to Play
	/// @param {real} Rate The rate (in milliseconds) to transition
function ChangeMusic(BG_MusicTo,Rate)
{
	
	if (global.Music != BG_MusicTo) {global.PlayNextMusic=true;}
	var MusicGain = audio_sound_get_gain(global.Music);
	
	if (global.PlayNextMusic)
	{
		audio_sound_gain(global.Music,0,(Rate*0.33));
		
			if (MusicGain <= 0.5)
			{
				audio_stop_sound(global.Music);
				global.Music = BG_MusicTo; 
				audio_play_sound(global.Music,SoundPriority.bg_music,true);
				audio_sound_gain(global.Music,0,0);
				audio_sound_gain(global.Music,1,(Rate));
				
				global.PlayNextMusic = false;
			}

		//audio_sound_gain(global.Music,0,0);
		//audio_sound_gain(global.Music,1,Rate);
		
		
	}
	
}