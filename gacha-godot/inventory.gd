extends AnimatedSprite2D
var inventory = GlobalScript.inventory 
var weapons = inventory.keys()
var index = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	set_animation(weapons[index])


func _on_rightarrow_pressed() -> void:
	if index < weapons.size() - 1:
		index = index + 1
	else: 
		index = 0


func _on_leftarrow_pressed() -> void:
	if index != 0:
		index = index - 1
	else:
		index = weapons.size() - 1


func _on_gacha_pressed() -> void:
	get_tree().change_scene_to_file("res://gacha.tscn")
