extends RigidBody2D

const BALL_SPEED = 800

var ball_launch = false
# Called when the node enters the scene tree for the first time.
func _input(event: InputEvent) -> void:
	if event.is_action_released("LAUNCH") and !ball_launch:
		linear_velocity = Vector2(1, -1).normalized() * BALL_SPEED
		ball_launch = true
		

func _physics_process(delta):
	linear_velocity = linear_velocity.normalized() * BALL_SPEED
	


func _on_body_entered(body: Node) -> void:
	if body is Brick:
		body.queue_free()
