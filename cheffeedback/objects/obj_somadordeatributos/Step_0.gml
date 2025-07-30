if (global.recalcular) {
     global.total_docura = 0;
     global.total_amargor = 0;
     global.total_acidez = 0;

    with (obj_ingrediente) {
        if (x < 200 && y > 400) {
            global.total_docura  += docura;
            global.total_amargor += amargor;
            global.total_acidez  += acidez;
        }
    }

    global.recalcular = false; // pronto, não soma mais até algo mudar
}