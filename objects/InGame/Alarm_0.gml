///@description Gen enemy
var dir = choose(0, 90, 180, 270);
var pp = 100;
switch(dir) {
	case 0:
		var xx = room_width - pp;
		var yy = random(room_height);
	case 90:
		var xx = random(room_width);
		var yy = pp;
	case 180:
		var xx = pp;
		var yy = random(room_height);
	case 270:
		var xx = random(room_width);
		var yy = room_height - pp
}
instance_create_layer(xx, yy, "layer_enemy", obj_enemy1);
alarm[0] = room_speed * 2;