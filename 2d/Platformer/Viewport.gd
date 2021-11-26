#extends Camera2D
#
#
## Declare member variables here. Examples:
## var a = 2
## var b = "text"
#onready var boundry = get_node("Boundry")
#onready var player = get_node("/root/EgPlatformer/Player/PlayerBody")
#onready var tile_map = get_node("/root/EgPlatformer/World/TileMap")
#onready var camera = get_node("/root/EgPlatformer/Camera")
#
#onready var is_on_camera = false
#onready var player_camera_delta = 0.0
#
## Called when the node enters the scene tree for the first time.
#func _ready():
#	camera.position = player.position
#	camera.position.y = player.position.y - 50
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	if is_on_camera:
#		pass
##	else:
##		move_camera()
#
#func move_camera():
#	if player.position.x > camera.position.x:
#		camera.position.x = camera.position.x + float(2.6)
#	elif player.position.x < camera.position.x:
#		camera.position.x = camera.position.x - float(2.6)
#
#	print(camera.position.y) # This is static
#
#func _on_Boundry_body_exited(body):
#	if body == player:
#		is_on_camera = false
#		print("Player Position:")
#		print(player.position.x)
#
#		print("Camera Position:")
#		print(camera.position.x)
#
#		print("")
##		print(player.position.x - camera.position.x)
#
#
#func _on_Boundry_body_entered(body):
#	if body == player:
#		is_on_camera = true
##		print(player.position.x)
