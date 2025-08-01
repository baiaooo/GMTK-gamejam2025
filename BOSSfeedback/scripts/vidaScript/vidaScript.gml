function criarVidas(vidas, hp) { // Função para adicionar os corações vermelhos e os pretos na tela  
	for (var i = 0; i < hp; i++) {
	    var coracao = instance_create_layer(5 + i * 25, 10, "Instances", obj_vida)
		var coracaoVazio = instance_create_layer(5 + i * 25, 10, "Instances", obj_vida_vazia)
	    array_push(vidas, coracao)
	}
}


function removerVida(vidas) { // Função para remover o coração caso o heroi sofre dano
	var ultimoCoracao = array_pop(vidas)
    if (instance_exists(ultimoCoracao)) {
        instance_destroy(ultimoCoracao)
    }
}

function morteHeroi(hp) { // Função para mudar de tela quando o heroi morre
	if(hp <= 0){
		room_goto(bosscutscene1);
	}
}