switch (estado) {
    case "mover":
        // Anda até o ponto
        var dir = point_direction(x, y, ponto_alvo_x, ponto_alvo_y);
        x += lengthdir_x(velocidade, dir);
        y += lengthdir_y(velocidade, dir);

        if (point_distance(x, y, ponto_alvo_x, ponto_alvo_y) < 8) {
            // Chegou, escolher ação aleatória
           var acoes = [];

			// Sempre pode atirar
			array_push(acoes, "tiros");
			array_push(acoes, "fogo");

			// Só adiciona se tiver o upgrade
			if (global.upgrade_minions > 0) array_push(acoes, "minions");
			if (global.upgrade_explosion > 0) array_push(acoes, "explosoes");

			// Sorteia entre as ações disponíveis
			acao_escolhida = acoes[irandom(array_length(acoes) - 1)];
            estado = "agir";
        }
        break;

    case "agir":
        switch (acao_escolhida) {
            case "minions":
                for (var i = 0; i < 3*global.upgrade_minions; i++) {
                    instance_create_layer(x + irandom_range(-25+(-25*global.upgrade_minions), 25+(25*global.upgrade_minions)), y + irandom_range(-25+(-25*global.upgrade_minions), 25+(25*global.upgrade_minions)), "Instances", obj_minion);
                }
                break;

		case "tiros":{
		    var total_projeteis = 8 + (4 * global.upgrade_bullet);
		    var angulo_entre = 360 / total_projeteis;

		    for (var i = 0; i < total_projeteis; i++) {
		        dir = i * angulo_entre;
		        var b = instance_create_layer(x, y, "Instances", obj_tiroboss);
		        b.direction = dir;
		        b.speed = 5;
		    }
		    break;}
			
		case "fogo":{
		    var total_projeteis = 4 + (3 * global.upgrade_bullet);
		    var angulo_entre = 360 / total_projeteis;

		    for (var i = 0; i < total_projeteis; i++) {
		        dir = irandom(359);
		        var b = instance_create_layer(x, y, "Instances", obj_fogoboss);
		        b.direction = dir;
		        b.speed = 5;
		    }
		    break;}

        case "explosoes":
    var total = global.upgrade_explosion * 3;
    for (var i = 0; i < total; i++) {
        var px = irandom(room_width);
        var py = irandom(room_height);
        instance_create_layer(px, py, "Instances", obj_explosao);
    }
    break;
               

            case "laser":
                instance_create_layer(x, y, "Instances", obj_laser_boss);
                break;
        }
// Base inicial aleatória entre 2000 e 3000 ms
var espera = 2000 + irandom(1000);

// Redução baseada em hype, com curva suave (exponencial)
var reducao_max = 2200;
var reducao = reducao_max * (1 - power(0.7, global.hype));

// Aplica a redução ao tempo de espera
espera -= reducao;

// Garante tempo mínimo de 500 ms
if (espera < 500) espera = 500;
if (object_index == obj_BOSS_segundaforma) {
    espera = espera/2;
}

// Define o momento de agir
esperar_ate = current_time + round(espera);
        estado = "esperar";
        break;

    case "esperar":
        if (current_time >= esperar_ate) {
            // Novo ponto aleatório e volta pro loop
            ponto_alvo_x = irandom_range(100, room_width - 100);
            ponto_alvo_y = irandom_range(100, room_height - 100);
            estado = "mover";
        }
        break;
}
if (hp <= 0 && !global.fimdaluta) {
    instance_destroy();  

    if (global.upgrade_segundaforma > 0 && object_index == obj_BOSS) {
        // Invoca segunda forma
        instance_create_layer(x, y, "Instances", obj_BOSS_segundaforma);
    } else {
        // Boss morre normalmente
        instance_create_layer(x, y, "Instances", obj_BOSS_morrendo);
    }
}