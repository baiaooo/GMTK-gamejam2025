function executarInvensibilidade(heroi) {
	if (invensivel) {
	    heroi.invensivel_tempo -= 1
    
	    heroi.image_alpha = (heroi.invensivel_tempo mod 10 < 5) ? 0.5 : 1 // efeito de piscar

	    if (heroi.invensivel_tempo <= 0) {
	        heroi.invensivel = false
	        heroi.image_alpha = 1
	    }
	}
}