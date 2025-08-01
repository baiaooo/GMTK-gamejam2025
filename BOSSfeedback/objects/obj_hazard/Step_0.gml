x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// Margens da tela
var margem = sprite_width / 2; // ajuste se o sprite tiver offset

// Ricochete horizontal
if (x < margem || x > room_width - margem) {
    direction = 180 - direction;
    x = clamp(x, margem, room_width - margem); // evita sair da tela
}

// Ricochete vertical
if (y < margem || y > room_height - margem) {
    direction = 360 - direction;
    y = clamp(y, margem, room_height - margem);
}