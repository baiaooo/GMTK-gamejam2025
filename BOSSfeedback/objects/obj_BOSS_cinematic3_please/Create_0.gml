texto = [
    "This time, I hired a *GAME CONSULTANT*. Meet Erik!",
    "He said I should 'improve the UX'",
	"I have no idea what that means.",
    "Then he asked: 'What's a game jam?'",
    "I'm... honestly worried.",
    "Please... I need *your* feedback, not his."
];

etapa = 0;
esperando = false;
esperar_ate = 0;

letra_por_letra = "";
letras_mostradas = 0;
tempo_letra = 0;
velocidade_letra = 1.2; // menor = mais rápido