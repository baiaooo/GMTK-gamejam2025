var diff_docura  = global.total_docura  - global.goaldocura;
var diff_amargor = global.total_amargor - global.goalamargor;
var diff_acidez  = global.total_acidez  - global.goalacidez;

    if (diff_docura == 0 && diff_amargor == 0 && diff_acidez == 0) {
        global.feedback = "O cliente adorou o prato!";
    }

    var maior_dif = 0;

    if (abs(diff_docura) > maior_dif) {
        maior_dif = abs(diff_docura);
        global.feedback = (diff_docura > 0) ? "Muito doce!" : "Faltou docura!";
    }

    if (abs(diff_amargor) > maior_dif) {
        maior_dif = abs(diff_amargor);
        global.feedback = (diff_amargor > 0) ? "Muito amargo!" : "Faltou amargor!";
    }

    if (abs(diff_acidez) > maior_dif) {
        maior_dif = abs(diff_acidez);
        global.feedback = (diff_acidez > 0) ? "Muito ácido!" : "Faltou acidez!";
    }