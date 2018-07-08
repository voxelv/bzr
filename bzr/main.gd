extends Node

onready var vbox = $GridContainer/VBoxContainer

func _ready():
	if OS.get_name() == "HTML5":
		OS.set_window_maximized(true)
	
	for child in vbox.get_children():
		if child is Button:
			child.connect("pressed", self, "_on_button_press", [child.get_position_in_parent()])
	pass

func _on_button_press(i):
	print(str(i))
	pass