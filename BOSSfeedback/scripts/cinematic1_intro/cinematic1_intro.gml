function cinematic1_intro(etapa) {
    switch (etapa) {
        case 0:
            texto = "Oi, jogador.";
            sprite_index = spr_boss_normal;
            esperar_ate = current_time + 1000;
            esperando = true;
            break;

        case 1:
            texto = "Você tá ferrado.";
            sprite_index = spr_boss_sad;
            esperar_ate = current_time + 1500;
            esperando = true;
            break;

        case 2:
            room_goto(bossroom);
            break;
    }
}
