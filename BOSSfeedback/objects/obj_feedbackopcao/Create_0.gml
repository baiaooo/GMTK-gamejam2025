// Sorteia um número ainda não usado
if (array_length(global.upgrades_possiveis) == 0) {
    numero = -1; // Nenhum upgrade disponível
    texto = "Erro: sem opções!";
} else {
    var idx = irandom(array_length(global.upgrades_possiveis) - 1);
    numero = global.upgrades_possiveis[idx];

    // Remove o número da lista de disponíveis
    array_delete(global.upgrades_possiveis, idx, 1);
    array_push(global.upgrades_usados, numero);

    // Define o texto com base no número
    switch (numero) {
        case 0: texto = "Add more minions"; break;
        case 1: texto = "Epic cinematic attacks"; break;
        case 2: texto = "Better music and sound"; break;
        case 3: texto = "Smarter boss patterns"; break;
        case 4: texto = "Environmental hazards"; break;
        default: texto = "???"; break;
    }
}