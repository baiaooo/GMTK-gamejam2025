function sortear_upgrade_valido() {
    var opcoes_validas = [];

// Verifica e adiciona "Add music"
if (global.upgrade_musica == 0 && !array_contains(global.upgradesnatela, "upgrade_musica"))
    array_push(opcoes_validas, "upgrade_musica");

// Verifica e adiciona "Epic soundtrack" SOMENTE se "musica" já foi desbloqueado
if (
    global.upgrade_musicaepica == 0 &&
    global.upgrade_musica == 1 &&
    !array_contains(global.upgradesnatela, "upgrade_musicaepica")
) {
    array_push(opcoes_validas, "upgrade_musicaepica");
}


// Verifica e adiciona "Second phase"
if (global.upgrade_segundaforma == 0 && global.hype >= 3 && !array_contains(global.upgradesnatela, "upgrade_segundaforma")) {array_push(opcoes_validas, "upgrade_segundaforma");}

// Verifica e adiciona "Puzzle mechanic"
if (global.upgrade_puzzle == 0 && !array_contains(global.upgradesnatela, "upgrade_puzzle"))
    array_push(opcoes_validas, "upgrade_puzzle");


// Verifica e adiciona "more bullets"
if (!array_contains(global.upgradesnatela, "upgrade_bullet")) 
    array_push(opcoes_validas, "upgrade_bullet");

// Verifica e adiciona "Explosions"
if (!array_contains(global.upgradesnatela, "upgrade_explosion")) 
    array_push(opcoes_validas, "upgrade_explosion");

// Verifica e adiciona "Summon more minions"
if (!array_contains(global.upgradesnatela, "upgrade_minions")) 
    array_push(opcoes_validas, "upgrade_minions");

// Verifica e adiciona "Stage hazards"
if (!array_contains(global.upgradesnatela, "upgrade_environment")) 
    array_push(opcoes_validas, "upgrade_environment");

// Verifica e adiciona "More boss HP"
if (!array_contains(global.upgradesnatela, "upgrade_hp")) 
    array_push(opcoes_validas, "upgrade_hp");

// Verifica e adiciona "Boss moves faster"
if (!array_contains(global.upgradesnatela, "upgrade_speed")) 
    array_push(opcoes_validas, "upgrade_speed");




    show_debug_message("opcões: " + string(opcoes_validas));
    var escolhido = opcoes_validas[irandom(array_length(opcoes_validas) - 1)];

    // Adiciona à lista da tela atual
    array_push(global.upgradesnatela, escolhido);
    show_debug_message("Upgrade sorteado: " + string(escolhido));
    return escolhido;
}
