// Velocidade inicial aleatória
speed = random_range(4,  12);
des = random_range(0.9, 0.95);
direction = irandom(359);

// Timer de vida (entre 5 a 10 segundos em milissegundos)
tempo_de_vida = current_time + irandom_range(5000, 10000);
