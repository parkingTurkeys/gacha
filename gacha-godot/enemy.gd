extends AnimatedSprite2D
var bullet_scene = preload("res://bullet.gd")
var bullet
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func add_bullets():
	for i in range(8):
		bullet = bullet_scene.instantiate()
