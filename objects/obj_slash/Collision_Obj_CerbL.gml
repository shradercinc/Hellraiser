instance_create_layer(other.x,other.y, "Effects", Obj_Shield);
instance_destroy(self);
audio_play_sound(snd_wall, 1, false);
