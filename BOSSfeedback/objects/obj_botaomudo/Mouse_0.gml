global.audio_ligado = !global.audio_ligado;

if (global.audio_ligado) {
    audio_master_gain(1); // volume máximo
} else {
    audio_master_gain(0); // mudo
}
