extends Camera

var speed = 25
var direction = Vector3()

#onready var player

func _ready():
	#set_fixed_process(true)
	set_physics_process(true)
	pass

func _physics_process(delta):
	direction = Vector3(0, 0, 0)
	direction.x += 1
	
	#self.translation(Vector3(direction.x, 0, 0))
	self.translation.x += direction.x * speed * delta
	pass
