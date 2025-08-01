if (!explodiu && current_time >= tempo_explodir) {
    // Começa a explosão
    //sprite_index = spr_explosao;
    image_speed = 0.5;
    explodiu = true;

    // Dano se o herói estiver próximo (ex: raio de 64 pixels)
    if (instance_exists(obj_heroi)) {
        var dist = point_distance(x, y, obj_heroi.x, obj_heroi.y);
        if (dist <= 200 && !dano_aplicado) {
            obj_heroi.hp -= 1; // ou uma função de dano
            dano_aplicado = true;
        }
    }
}

// Quando a animação da explosão termina, destrói
if (explodiu && image_index >= image_number - 1) {
    instance_destroy();
}