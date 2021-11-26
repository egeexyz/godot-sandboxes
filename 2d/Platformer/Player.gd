extends KinematicBody2D

export (int) var speed = 200
export (int) var jump_speed = -700
export (int) var gravity = 2050
var velocity = Vector2.ZERO

func get_input():
	velocity.x = 0
	if Input.is_action_pressed("ui_cancel"):
		get_tree().paused = true
	if Input.is_action_pressed("ui_right"):
		velocity.x += speed
	if Input.is_action_pressed("ui_left"):
		velocity.x -= speed

func _physics_process(delta):
#	set_camera()
	get_input()
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
	if Input.is_action_just_pressed("ui_up"):
		if is_on_floor():
			velocity.y = jump_speed
	elif Input.is_action_pressed("ui_right"):
		get_node("PlayerSprite").flip_h = false
		get_node("PlayerSprite").play("move")
	elif Input.is_action_pressed("ui_left"):
		get_node("PlayerSprite").flip_h = true
		get_node("PlayerSprite").play("move")
	else:
		get_node("PlayerSprite").play("stand")
	if !is_on_floor():
		get_node("PlayerSprite").play("jump")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
#	set_camera()
#	position = get_node("PlayerSprite").position
