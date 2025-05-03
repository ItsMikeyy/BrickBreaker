extends StaticBody2D

class_name Brick

@onready var brick_sprite: Sprite2D = $Sprite2D
@export var brick_texture: Texture2D

func _ready() -> void:
	brick_sprite.texture = brick_texture
