if (position_meeting(mouse_x, mouse_y, obj_feedbacksubmit)) {
    if (global.opcao_escolhida != "") {
        global.mensagem = "Feedback enviado!";
        global.hype += 1;

        var upg = global.opcao_escolhida;

        switch (upg) {
            case "upgrade_musica":
                global.upgrade_musica += 1;
                show_debug_message("Upgrade: Add music");
                break;

            case "upgrade_segundaforma":
                global.upgrade_segundaforma += 1;
                show_debug_message("Upgrade: Second phase!");
                break;

            case "upgrade_musicaepica":
                global.upgrade_musicaepica += 1;
                show_debug_message("Upgrade: Epic soundtrack");
                break;

            case "upgrade_puzzle":
                 global.upgrade_puzzle += 1;
                show_debug_message("Upgrade: Puzzle mechanic");
                break;

            case "upgrade_giantlaser":
                global.upgrade_giantlaser += 1;
                show_debug_message("Upgrade: Giant laser of doom");
                break;

            case "upgrade_bullet":
                global.upgrade_bullet += 1;
                show_debug_message("Upgrade: Faster bullets (" + string(global.upgrade_bullet) + ")");
                break;

            case "upgrade_explosion":
                global.upgrade_explosion += 1;
                show_debug_message("Upgrade: Explosive shots (" + string(global.upgrade_explosion) + ")");
                break;

            case "upgrade_minions":
                global.upgrade_minions += 1;
                show_debug_message("Upgrade: Summon more minions (" + string(global.upgrade_minions) + ")");
                break;

            case "upgrade_environment":
                global.upgrade_environment += 1;
                show_debug_message("Upgrade: Stage hazards (" + string(global.upgrade_environment) + ")");
                break;

            case "upgrade_hp":
                global.upgrade_hp += 1;
                show_debug_message("Upgrade: More boss HP (" + string(global.upgrade_hp) + ")");
                break;

            case "upgrade_speed":
                global.upgrade_speed += 1;
                show_debug_message("Upgrade: Boss moves faster (" + string(global.upgrade_speed) + ")");
                break;

            default:
                show_debug_message("Erro: upgrade desconhecido → " + string(upg));
                break;
        }
switch (global.hype) {
    case 1:
        room_goto(bosscutscene1_thanks);
        break;
    case 2:
        room_goto(bosscutscene2_thanks);
        break;
    case 3:
        room_goto(bosscutscene3_thanks);
        break;
    case 4:
        room_goto(bosscutscene4_thanks);
        break;
    case 5:
        room_goto(menuprincipal);
        break;
    default:
        room_goto(menuprincipal); // fallback
        break;
}










    } else {
        global.mensagem = "Escolha uma opção antes de enviar!";
    }
}

