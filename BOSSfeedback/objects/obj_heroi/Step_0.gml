// Movimento (setas + WASD)
var h = (keyboard_check(vk_right) || keyboard_check(ord("D"))) - (keyboard_check(vk_left) || keyboard_check(ord("A")));
var v = (keyboard_check(vk_down)  || keyboard_check(ord("S"))) - (keyboard_check(vk_up)    || keyboard_check(ord("W")));

// Movimento do herói
x += h * speed_move;
y += v * speed_move;

// Limita dentro da sala
x = clamp(x, sprite_width / 2, room_width - sprite_width / 2);
y = clamp(y, sprite_height / 2, room_height - sprite_height / 2);

// Troca de sprite (idle ou run)
if (h != 0 || v != 0) {
    sprite_index = spr_hero_run;
    image_speed = 0.2;
    
    // Vira para o lado que está andando (apenas horizontalmente)
    if (h != 0) {
        image_xscale = sign(h); // -1 = esquerda, 1 = direita
    }
} else {
    sprite_index = spr_hero_idle;
    image_speed = 0.1;
}


// Atirar
fire_timer -= 1;
if (mouse_check_button(mb_left) && fire_timer <= 0) {
    var bullet = instance_create_layer(x, y, "Instances", obj_ataqueheroi);
    bullet.direction = point_direction(x, y, mouse_x, mouse_y);
    bullet.speed = 8;
    fire_timer = fire_rate;
}
if (hp <= 0 && !global.fimdaluta) {
	global.fimdaluta=true;
    audio_play_sound(snd_BOSS_death, 1, false);
	room_goto(gameover);
}

executarInvensibilidade(self)