extends RigidBody2D

signal touched(first_time)

var touch_count = 0

func touch():
	touch_count += 1
	emit_signal("touched", touch_count > 1)
