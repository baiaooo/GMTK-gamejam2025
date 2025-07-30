if (position_meeting(mouse_x, mouse_y, id)) {
    dragging = true;
    offset_x = x - mouse_x;
    offset_y = y - mouse_y;

    // Salva posição anterior
    start_x = x;
    start_y = y;
}