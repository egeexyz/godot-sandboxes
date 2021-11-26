extends KinematicBody2D

export (int) var gravity = 2050
export (int) var speed = 200

var velocity = Vector2.ZERO

func _process(delta):
	pass
#	velocity.x = 0
#	if Input.is_action_pressed("ui_right"):
#		velocity.x += speed
#	if Input.is_action_pressed("ui_left"):
#		velocity.x -= speed
#
#	velocity.y += gravity * delta
#	velocity = move_and_slide(velocity, Vector2.UP)
# Called when the node enters the scene tree for the first time.
func _ready():
	position = get_node("/root/EgPlatformer/Player").position
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
