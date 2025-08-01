// Inicia a primeira etapa automaticamente (apenas uma vez)
if (etapa == 0 && texto == "") {
    texto = "Did you see my new minions!?";
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
    if (current_time >= esperar_ate) {
        esperando = false;
        etapa += 1;
        letras_mostradas = 0;
        letra_por_letra = "";
    }
}

if (keyboard_check_pressed(vk_space) && !esperando) {
    if (letras_mostradas < string_length(texto)) {
        letras_mostradas = string_length(texto);
        letra_por_letra = texto;
    } else {
        switch (etapa) {
            case 1:
                texto = "One of them was Jerry, my nephew.";
                esperando = true;
                esperar_ate = current_time + 100;
                break;

            case 2:
                texto = "I can't find him anywhere. Did you see him?";
                esperando = true;
                esperar_ate = current_time + 100;
                break;

            case 3:
                texto = "Anyway... I still need more feedback.";
                esperando = true;
                esperar_ate = current_time + 100;
                break;

            default:
                room_goto(feedback);
                break;
        }
    }
}
