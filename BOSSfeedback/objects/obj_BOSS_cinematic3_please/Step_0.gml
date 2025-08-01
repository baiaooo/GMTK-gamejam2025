// Inicia a primeira etapa automaticamente (apenas uma vez)
if (etapa == 0 && texto == "") {
    texto = "This time, I hired a *GAME CONSULTANT*. Meet Erik!";
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
                texto = "He said I should 'improve the UX'";
                esperando = true;
                esperar_ate = current_time + 100;
                break;

            case 2:
                texto = "I have no idea what that means.";
                esperando = true;
                esperar_ate = current_time + 100;
                break;

            case 3:
                texto = "Then he asked: 'What's a game jam?'";
                esperando = true;
                esperar_ate = current_time + 100;
                break;

            case 4:
                texto = "I'm... honestly worried.";
                esperando = true;
                esperar_ate = current_time + 100;
                break;

            case 5:
                texto = "Please... I need *your* feedback, not his.";
                esperando = true;
                esperar_ate = current_time + 100;
                break;

            default:
                room_goto(feedback);
                break;
        }
    }
}
