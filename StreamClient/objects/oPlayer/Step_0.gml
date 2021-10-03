
if (!remote) {
kup = keyboard_check(ord("W"))
kleft = keyboard_check(ord("A"))
kdown = keyboard_check(ord("S"))
kright = keyboard_check(ord("D"))

kjump = keyboard_check_pressed(vk_space)
kjump_hold = keyboard_check(vk_space)
}
else {
kup = false
kleft = false
kdown = false
kright = false

kjump = false
kjump_hold = false
}


jump_buffer = max(jump_buffer-1, 0)
coyote = max(coyote-1, 0)

if (kjump_hold) {
	jump_buffer = max_jump_buffer
}
if (onGround()) {
	coyote = max_coyote
}


dir.x = kright - kleft
dir.y = kdown - kup

if (abs(spd.x) < walkspd) {
	spd.x += acc * dir.x
}

if (dir.x == 0) {
	spd.x -= sign(spd.x) * dec
}

if (abs(spd.x) < dec and dir.x == 0) {
	spd.x = 0
}

spd.y += grv


if ((onGround() or coyote > 0) and (kjump or jump_buffer > 0)) {
	jump()
}

if (spd.y < -1 and !kjump_hold and !is_jump_cut) {
	spd.y *= jump_cut
	is_jump_cut = true
}


if(place_meeting(x + spd.x, y, oWall)) {
	while(!place_meeting(x + sign(spd.x) , y, oWall)) {
		x += sign(spd.x)
	}
	spd.x = 0
}
x += spd.x


if(place_meeting(x, y + spd.y, oWall)) {
	while(!place_meeting(x , y + sign(spd.y), oWall)) {
		y += sign(spd.y)
	}
	spd.y = 0
}
y += spd.y
