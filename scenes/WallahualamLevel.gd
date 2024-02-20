extends Node

enum {
	INIT
	PLAYING
	END
}
# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
# could
var state = INIT
var initial_position = Vector2(112, 480)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass



func _on_HUD_button_press() -> void:
	$HUD.hide()
	$GreenShip.disabled = false
	$GreenShip.position = initial_position
	$GreenShip.rotation = 0
	if state == INIT:
		state = PLAYING
	elif state == END:
		state = PLAYING



func _on_FinishArea_finish() -> void:
	state = END
	$GreenShip.disabled = true
	$HUD.showMessage("Finished!", "Reset")
	
