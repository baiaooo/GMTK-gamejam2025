// Inicia a primeira etapa automaticamente (apenas uma vez)
if (etapa == 0 && texto == "") {
    texto = "I should hire YOU! Great Idea!";
    esperando = true;
    esperar_ate = current_time + 100;
}

// Atualiza letra por letra (somente se não estiver esperando)
if (!esperando) {
    if (tempo_letra <= 0 && letras_mostradas < string_length(texto)) {
        letras_mostradas += 1;
        letra_por_letra = string_copy(texto, 1, letras_mostradas);
        tempo_letra = velocidade_letra;
    } else {
        tempo_letra -= 1;
    }
} else {
    // Finaliza a espera (ex: após tempo ou som)
    if (current_time >= esperar_ate) {
        esperando = false;
        etapa += 1;
        letras_mostradas = 0;
        letra_por_letra = "";
    }
}

// Avança com espaço, se não estiver esperando
if (keyboard_check_pressed(vk_space) && !esperando) {
    if (letras_mostradas < string_length(texto)) {
        letras_mostradas = string_length(texto);
        letra_por_letra = texto;
    } else {
        switch (etapa) {
            case 1:
                texto = "Restart!";
                esperando = true;
                esperar_ate = current_time + 100;
                break;

            case 2: default:
                room_goto(menuprincipal);
                break;
        }
    }
}
