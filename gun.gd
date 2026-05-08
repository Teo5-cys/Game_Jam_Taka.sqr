extends Area2D


func _process(_delta):
	look_at(get_global_mouse_position())


func shoot():
	const BULLET = preload("res://bullet_2d.tscn")
	var new_bullet = BULLET.instantiate()
	new_bullet.global_transform = %ShootingPoint.global_transform
	%ShootingPoint.add_child(new_bullet)


func _on_timer_timeout() -> void:
	shoot()
