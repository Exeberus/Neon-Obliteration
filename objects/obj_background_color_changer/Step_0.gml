t += change_speed;

if (t >= 1) {
    t = 0;
    actual_color = target_color;
    target_color = make_color_rgb(irandom(30), irandom(30), irandom(30));
}

var r = lerp(color_get_red(actual_color), color_get_red(target_color), t);
var g = lerp(color_get_green(actual_color), color_get_green(target_color), t);
var b = lerp(color_get_blue(actual_color), color_get_blue(target_color), t);
color_rgb = make_color_rgb(r, g, b);