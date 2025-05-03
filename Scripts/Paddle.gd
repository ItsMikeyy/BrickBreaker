extends CharacterBody2D

var speed: float = 400.0

const  MARGIN = 50

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var box = get_viewport_rect()
	if Input.is_action_pressed("LEFT"):
		print("LEFT")
		position.x -= speed * delta
	if Input.is_action_pressed("RIGHT"):
		print("RIGHT")
		position.x += speed * delta
	
	position.x = clamp(position.x, box.position.x + MARGIN, box.end.x - MARGIN)
