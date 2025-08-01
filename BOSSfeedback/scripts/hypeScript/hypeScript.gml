function adicionandoHype(quantidadeHype, quantidadeMaximaHype) {	
	for (var i = 0; i < quantidadeMaximaHype; i++) {
		var objeto = obj_hype_vazio
		
		if((quantidadeHype != 0 ) && ((i + 1) <= quantidadeHype)) { // Decide se vai colocar ativado ou nao
			objeto = obj_hype_ligado
		}
		
	    instance_create_layer(20 + i * 25, 75, "Instances", objeto)
	}
}
