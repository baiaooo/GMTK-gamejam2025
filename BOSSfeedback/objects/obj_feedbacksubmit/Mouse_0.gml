if (position_meeting(mouse_x, mouse_y, obj_feedbacksubmit)) {
        if (global.opcao_escolhida != -1) {
            global.mensagem = "Feedback enviado!";
			global.upgrade_escolhido = global.opcao_escolhida;

        switch (global.upgrade_escolhido) {
    case 0:
        // Mais minions
        global.spawn_extra_minions = true;
		show_debug_message("Fiz o upgrade de extra minions: " + string(global.upgrade_escolhido));
        break;
    case 1:
        // Ataques cinemáticos
        global.usar_super_ataques = true;
		show_debug_message("Fiz o upgrade de super ataques " + string(global.upgrade_escolhido));
        break;
    case 2:
        // Música épica
        global.musicaerpica=true;
		show_debug_message("Fiz o upgrade de música épica: " + string(global.upgrade_escolhido));
        break;
    case 3:
        // Padrões de ataque inteligentes
        global.ia_avancada = true
		show_debug_message("Fiz o upgrade de ia avançada " + string(global.upgrade_escolhido));
        break;
    case 4:
        // Armadilhas no cenário
        global.ativar_hazards = true;
		show_debug_message("Fiz o upgrade de hazards: " + string(global.upgrade_escolhido));
        break;
}
            room_goto(bossroom); 
        } else {
            global.mensagem = "Escolha uma opção antes de enviar!";
        }
    }
