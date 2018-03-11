/// @description shade

hit = true;
instance_destroy(objSmash);
audio_play_sound(choose(sndBash1,sndBash2,sndBash3,sndBash4,sndHit),10,0);
hp=hp-global.currentDmg;
