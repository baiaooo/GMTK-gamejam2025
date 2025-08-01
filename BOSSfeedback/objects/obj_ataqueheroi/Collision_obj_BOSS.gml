instance_destroy();
// Destroi o projétil





// Se ainda não acabou a luta
if (!global.fimdaluta) {
    // Verifica se existe um totem na sala
    if (instance_exists(obj_totem)) {
        // Toca som de escudo/bloqueio
        //audio_play_sound(snd_bloqueado, 1, false);
    } else {
        // Dano permitido
        other.hp -= 1;
    }
}