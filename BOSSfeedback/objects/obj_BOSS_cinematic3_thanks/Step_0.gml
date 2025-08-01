// Atualiza letra por letra (somente se não estiver esperando)
if (!esperando) {
    if (tempo_letra <= 0 && letras_mostradas < string_length(texto[etapa])) {
        letras_mostradas += 1;
        letra_por_letra = string_copy(texto[etapa], 1, letras_mostradas);
        tempo_letra = velocidade_letra;
    } else {
        tempo_letra -= 1;
    }
} else {
    // Finaliza a espera (ex: após som ou tempo)
    if (current_time >= esperar_ate) {
        esperando = false;
        etapa += 1;
        letras_mostradas = 0;
        letra_por_letra = "";
    }
}

// Avança com espaço, se não estiver esperando
if (keyboard_check_pressed(vk_space) && !esperando) {
    // Se ainda não terminou de escrever, pula para o fim da fala atual
    if (letras_mostradas < string_length(texto[etapa])) {
        letras_mostradas = string_length(texto[etapa]);
        letra_por_letra = texto[etapa];
    } else {
        switch (etapa) {
            case 0: case 1: case 2:
                etapa += 1;
                letras_mostradas = 0;
                letra_por_letra = "";
                break;

            case 3:
                esperando = true;
                esperar_ate = current_time + 2000;
				room_goto(menuprincipal);
                break;

        }
    }
}
