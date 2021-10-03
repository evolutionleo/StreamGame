

cam_x = lerp(cam_x, player.x, interpolation)
cam_y = lerp(cam_y, player.y, interpolation)


camera_set_view_pos(camera, cam_x - cam_w/2, cam_y - cam_h/2)