// Anda lentamente em direção ao herói
if (instance_exists(obj_heroi)) {
    var dir = point_direction(x, y, obj_heroi.x, obj_heroi.y);
    var spd = 1.5;
    x += lengthdir_x(spd, dir);
    y += lengthdir_y(spd, dir);

    // Atira
    shoot_timer--;
    if (shoot_timer <= 0) {
        var b = instance_create_layer(x, y, "Instances", obj_tiroboss);
        b.direction = dir;
        b.speed = 5;
        shoot_timer = shoot_interval;
    }
}

// Morre se hp zerar
if (hp <= 0 && !global.fimdaluta) {
    instance_destroy();
}