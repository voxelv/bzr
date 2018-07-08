extends Node

onready var vbox = $GridContainer/VBoxContainer

func _ready():
	for child in vbox.get_children():
		if child is Button:
			child.connect("pressed", self, "_on_button_press", [child.get_position_in_parent()])
	pass

func _on_button_press(i):
	print(str(i))
	pass