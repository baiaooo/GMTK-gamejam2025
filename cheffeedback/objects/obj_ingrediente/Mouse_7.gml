if (dragging) {
    dragging = false;

    // Se soltar fora do lado esquerdo, volta
    if (x >= 700) {
        x = start_x;
        y = start_y;
    }
}
global.recalcular=true;