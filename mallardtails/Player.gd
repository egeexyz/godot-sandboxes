extends KinematicBody2D


export (int) var speed = 250
export (int) var jump_speed = -1100
export (int) var gravity = 3000
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
	get_input()
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
	if Input.is_action_just_pressed("ui_up"):
		if is_on_floor():
			velocity.y = jump_speed
	elif Input.is_action_pressed("ui_right"):
		$PlayerSprite.flip_h = false
		$PlayerSprite.play("walking")
	elif Input.is_action_pressed("ui_left"):
		$PlayerSprite.flip_h = true
		$PlayerSprite.play("walking")
	else:
		$PlayerSprite.play("standing")
	if !is_on_floor():
		$PlayerSprite.play("jumping")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_Area2D_body_entered(body):
	get_tree().paused = true
	print("Game Over!")


func _on_Goal_body_entered(body):
	get_tree().paused = true
	print("Well Done!")
