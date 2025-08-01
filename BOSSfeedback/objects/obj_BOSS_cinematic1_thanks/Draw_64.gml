// Caixa
var margem = 32;
var largura = room_width - margem * 2;
var altura = 80;
var x_pos = margem;
var y_pos = room_height - altura - margem;

draw_set_color(c_black);
draw_set_alpha(0.7);
draw_rectangle(x_pos, y_pos, x_pos + largura, y_pos + altura, false);
draw_set_alpha(1);

// Texto aparecendo letra por letra
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width / 2, y_pos + altura / 2, letra_por_letra);