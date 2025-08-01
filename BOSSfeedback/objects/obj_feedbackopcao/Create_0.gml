upgrade = sortear_upgrade_valido(); // já mostra no debug

// Define texto visível para o jogador
switch (upgrade) {
    case "upgrade_musica": texto = "Add some better music"; break;
    case "upgrade_segundaforma": texto = "Second boss phase!!"; break;
    case "upgrade_musicaepica": texto = "We need an EPIC soundtrack"; break;
    case "upgrade_puzzle": texto = "Add a puzzle mechanic or something"; break;
    case "upgrade_bullet":
        if (global.upgrade_bullet == 0) texto = "More projectiles maybe?";
        else if (global.upgrade_bullet == 1) texto = "Even more bullets";
        else texto = choose("Make it rain bullets", "Unleash bullet storm", "Make it a bullet hell");
        break;

    case "upgrade_explosion":
        if (global.upgrade_explosion == 0) texto = "Add explosions!";
        else if (global.upgrade_explosion == 1) texto = "Stronger explosions";
        else texto = choose("More boom!", "Explosions everywhere!");
        break;

    case "upgrade_minions":
        if (global.upgrade_minions == 0) texto = "Summon helper minions";
        else if (global.upgrade_minions == 1) texto = "Summon more minions";
        else texto = choose("Minion army!!", "Swarm of minions");
        break;

    case "upgrade_environment":
        if (global.upgrade_environment == 0) texto = "Add some environmental hazards";
        else if (global.upgrade_environment == 1) texto = "Make hazards stronger";
        else texto = choose("Hazards everywhere!", "More hazards!!!");
        break;

    case "upgrade_hp":
        if (global.upgrade_hp == 0) texto = "Increase boss HP";
        else if (global.upgrade_hp == 1) texto = "Even more HP";
        else texto = choose("Tanky boss mode!!", "Unstoppable endurance!")
        break;

    case "upgrade_speed":
        if (global.upgrade_speed == 0) texto = "Increase boss speed";
        else if (global.upgrade_speed == 1) texto = "Boss gets faster";
        else texto = choose("Lightning-fast boss!!!", "Blazing speed!");
		break;


    default: texto = "???"; break;
}