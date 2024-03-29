extends Sprite

onready var cannon:Sprite = $Cannon
var speed = 200 #Pixeles

var proyectile_container:Node

func set_proyectile_container(container:Node):
	cannon.proyectile_container = container
	proyectile_container = container

func _physics_process(delta):
	var direction_optimized:int = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))

	var mouse_position:Vector2 = get_global_mouse_position()
	
	cannon.look_at(mouse_position)
	
	if Input.is_action_just_pressed("fire"):
		cannon.fire()
	#var direction_vector:Vector2 = (mouse_position - origen).normalized()
	#cannon.look_at(mouse_position)
	
	position.x += direction_optimized * speed * delta
