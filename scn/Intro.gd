extends Node

var story = []

func _ready():
	set_timer(5)
	scene("i was all alone..")
	scene("..in an empty room")
	scene("i could only stare..")
	scene("..into the window")
	get_parent().load_story(story)
	get_parent().connect("finished_story", self, "load_game")

func load_game():
	get_tree().change_scene("res://scn/Main.tscn")

var timer = 10
var do_wait_for_click = false

func scene(text, picture=null, bg_color=null):
	var new_scene = {text=text, wait=do_wait_for_click, timer=timer}
	if picture:
		new_scene.picture = picture
	if bg_color:
		new_scene.bg_color = bg_color
	story.append(new_scene)
	do_wait_for_click = false

func wait_for_click():
	do_wait_for_click = true

func set_timer(delay):
	timer = delay
