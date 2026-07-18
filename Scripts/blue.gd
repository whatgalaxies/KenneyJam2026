extends Node2D

func play_idle_animation():
	%AnimationPlayer.play("Idle")

func play_walk_animation_right():
	%AnimationPlayer.play("Move Right")
