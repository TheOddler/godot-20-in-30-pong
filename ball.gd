extends CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	velocity = Vector2(20, 0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _physics_process(_delta):
	var collision_info = move_and_collide(velocity)
	if collision_info:
		print(collision_info.get_normal())
		velocity = velocity.bounce(collision_info.get_normal())
