extends Node2D

var mouse_position = Vector2()
var mouse_button_pressed = false

@onready var typeLabel =$TypeLabel
@onready var pressedLabel = $PressedLabel

func _input(event: InputEvent) -> void:
	var wheel_movement = Vector3.ZERO
	if event is InputEventMouseMotion:
		typeLabel.text = "InputEventMouseMotion"
		if event.pressure:
			pressedLabel.text = "Pressed"
		else:
			pressedLabel.text = "Not pressed"
	else:
		typeLabel.text = "???"
		pressedLabel.text = "???"
