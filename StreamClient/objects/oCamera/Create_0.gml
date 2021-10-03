
camera = view_camera[0]

cam_x = camera_get_view_x(camera)
cam_y = camera_get_view_y(camera)

cam_w = camera_get_view_width(camera)
cam_h = camera_get_view_height(camera)

interpolation = 1/20


player = noone

with(oPlayer) {
	if (!remote)
		other.player = id
}