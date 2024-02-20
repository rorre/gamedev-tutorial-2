extends CanvasLayer
signal button_press

# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass

func showMessage(message: String, buttonMessage: String) -> void:
	$Label.text = message
	$Button.text = buttonMessage
	show()


func _on_Button_pressed() -> void:
	emit_signal("button_press")
