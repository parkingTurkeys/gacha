extends AnimatedSprite2D;
var hp = 10;
@onready var weapon_choice = %weapon_choice;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	set_animation(str(weapon_choice.selected))
	position = get_viewport().get_mouse_position()
	if Input.is_action_just_pressed("attack"):
		attack()

func attack():
	pass


func _on_home_pressed() -> void:
	get_tree().change_scene_to_file("res://home.tscn")
