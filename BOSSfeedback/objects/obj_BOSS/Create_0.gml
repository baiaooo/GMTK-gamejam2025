hp = 10+(global.hype*5)+(global.upgrade_hp*10);
hp=hp/5; //apenas pra testar!!!!!!!!!!!!!!!!!!!!!
if (object_index == obj_BOSS_segundaforma) {
    hp = hp/2;
}
shoot_interval = 60;
shoot_timer = shoot_interval;
estado = "mover";
ponto_alvo_x = irandom_range(100, room_width - 100);
ponto_alvo_y = irandom_range(100, room_height - 100);
esperar_ate = 0;
acao_escolhida = "";
velocidade = 2+(global.upgrade_speed*1.5)+(global.hype*0.3);
if (object_index == obj_BOSS_segundaforma) {
    velocidade = velocidade *1.5;
}
espera=0;

// Cria hazards na posição do boss, 2 por ponto de upgrade_environment
var qtd = global.upgrade_environment * 2;

for (var i = 0; i < qtd; i++) {
    instance_create_layer(x, y, "Instances", obj_hazard);
}

// Para garantir que nenhuma música anterior continue
audio_stop_all();

// Define qual música tocar com base nos upgrades
if (global.upgrade_musicaepica > 0) {
    audio_play_sound(music_epicbossmusic, 1, true);
}
else if (global.upgrade_musica > 0) {
    audio_play_sound(music_betterbossmusic, 1, true);
}
else {
    audio_play_sound(music_bossmusic, 1, true);
}

if (global.upgrade_puzzle > 0) {
    var margin = 32; // distância da borda da sala
    var w = room_width;
    var h = room_height;

    // Canto superior esquerdo
    instance_create_layer(margin, margin, "Instances", obj_totem);

    // Canto superior direito
    instance_create_layer(w - margin, margin, "Instances", obj_totem);

    // Canto inferior esquerdo
    instance_create_layer(margin, h - margin, "Instances", obj_totem);

    // Canto inferior direito
    instance_create_layer(w - margin, h - margin, "Instances", obj_totem);
}