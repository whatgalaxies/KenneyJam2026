extends Node2D

func spawn_mob():
	var new_mob = preload("res://Scenes/mob.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	
	new_mob.global_position = %PathFollow2D.global_position
	
	add_child(new_mob)

func reduce_time():
	
	if %SpawnTimer.wait_time > 0.5:
		print("5 Seconds Elapsed")
		var updated_time = %SpawnTimer.wait_time - .5
		%SpawnTimer.wait_time = updated_time
	else:
		pass
	


func _on_spawn_timer_timeout() -> void:
		spawn_mob()
