extends StaticBody2D

enum PaddleLocation {LEFT, RIGHT}
@export var location: PaddleLocation = PaddleLocation.LEFT
const SPEED: int = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func get_input():
	if location == PaddleLocation.LEFT:
		return Input.get_action_strength("player_left_down") - Input.get_action_strength("player_left_up")
	else:
		return Input.get_action_strength("player_right_down") - Input.get_action_strength("player_right_up")


func _physics_process(delta):
	move_and_collide(Vector2(0, get_input() * SPEED))
