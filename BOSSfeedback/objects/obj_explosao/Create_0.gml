// Tempo até explodir (1 a 1.5 segundos)
tempo_explodir = current_time + 2000 + irandom(1000);

// Estados
explodiu = false;
dano_aplicado = false;

// Sprite inicial de alerta
//sprite_index = spr_alerta;
image_speed = 0.1; // Pisca devagar