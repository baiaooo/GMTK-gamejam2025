var selecionado = (global.opcao_escolhida == numero);
draw_self();
// Desenha fundo do botão
draw_set_color(selecionado ? c_yellow : c_red);
draw_rectangle(x, y, x + 300, y + 40, false); // fundo

// Desenha borda do botão (opcional)
draw_set_color(c_black);
draw_rectangle(x, y, x + 300, y + 40, true); // borda

// Desenha o texto
draw_set_color(c_black); // texto sempre preto
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text(x + 10, y + 20, texto); // centralizado verticalmente