/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
speed_move = 4;
fire_rate = 20;
fire_timer = 0;
hp=5;
global.fimdaluta=false;

vidas = []
invensivel = false
invensivel_tempo = 0

global.upgrades_possiveis = [0, 1, 2, 3, 4]; // quantos upgrades quiser
global.upgrades_usados = [];

criarVidas(vidas, hp)
