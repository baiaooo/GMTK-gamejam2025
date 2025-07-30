// Desenha resultado no canto inferior direito
var txt = "Docura: " + string(global.total_docura) + "\n" +
          "Amargor: " + string(global.total_amargor) + "\n" +
          "Acidez: " + string(global.total_acidez);
draw_set_color(c_black);
draw_text(500, 400, txt);
//desenha os atributos do rango
if (instance_exists(global.hover_ingrediente)) {
    var hovered = global.hover_ingrediente;

    // Desenha uma "caixa" ou sprite perto do mouse
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);

    // Desenhar um fundo
    draw_set_color(c_white);
    draw_rectangle(mx, my, mx + 150, my + 80, false);

    // Texto com atributos
    draw_set_color(c_black);
    draw_text(mx + 5, my + 5, 
        "Docura: " + string(hovered.docura) + "\n" +
        "Amargor: " + string(hovered.amargor) + "\n" +
        "Acidez: "  + string(hovered.acidez));
}