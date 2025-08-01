if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}

// Desaceleração exponencial
speed *= 0.95;

// Auto-destruição após o tempo de vida
if (current_time >= tempo_de_vida) {
    instance_destroy();
}

