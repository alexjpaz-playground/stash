extends RigidBody2D

export var velocity = Vector2(50, 50)

export var screen_size = Rect2(0,0, 500, 500)

func _ready():
	self.linear_velocity = velocity
	
func _physics_process(delta):
	if self.position.y > screen_size.size.y:
		self.linear_velocity += Vector2(0, -50)
	if self.position.y < screen_size.position.y:
		self.linear_velocity += Vector2(0, 50)
	if self.position.x < screen_size.position.x:
		self.linear_velocity += Vector2(50, 0)
	if self.position.x > screen_size.size.x:
		self.linear_velocity += Vector2(-50, 0)
		
	