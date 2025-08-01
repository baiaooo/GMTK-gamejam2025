function acertouUsuario(alvo) {
	if(alvo.invensivel == false) {
		
		show_debug_message("Entrou aqui");
		alvo.hp -= 1; // remove hp do Objeto
		alvo.invensivel = true
		alvo.invensivel_tempo = 60
		
		removerVida(alvo.vidas)
	}
}