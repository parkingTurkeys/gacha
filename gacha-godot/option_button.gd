extends OptionButton
var weapons = GlobalScript.inventory.keys()


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(weapons)
	for i in weapons:
		add_item(i)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
