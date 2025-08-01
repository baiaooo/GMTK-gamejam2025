// Inicia a primeira etapa automaticamente (apenas uma vez)
if (etapa == 0 && texto == "") {
    texto = "You're still here?";
    esperando = true;
    esperar_ate = current_time + 200;
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
                texto = "I HAVE TO TELL YOU SOMETHING!";
                esperando = true;
                esperar_ate = current_time + 300;
                break;

            case 2:
                texto = "I APPEARED IN A YOUTUBE VIDEO!";
                esperando = true;
                esperar_ate = current_time + 300;
                break;

            case 3:
                texto = "‘Top 10 Weirdest Bosses That Ask For Feedback’";
                esperando = true;
                esperar_ate = current_time + 300;
                break;

            case 4:
                texto = "That’s me! I'm number 7!";
                esperando = true;
                esperar_ate = current_time + 300;
                break;

            case 5:
                texto = "I'm gonna show it to Jerry!";
                esperando = true;
                esperar_ate = current_time + 400;
                break;

            case 6:
                texto = "Anyway... Thank you, mortal.";
                esperando = true;
                esperar_ate = current_time + 400;
                break;

            case 7:
                texto = "Let’s get a beer. You earned it.";
                esperando = true;
                esperar_ate = current_time + 600;
                break;


            default:
                room_goto(menuprincipal); 
                break;
        }
    }
}

