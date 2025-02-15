extends AnimatedSprite2D
const star_values_normal = [0.0,70.0,85.0,92.5,97.5]
const star_values_guaranteed_3 = [0,0,0,92.5,97.5]
const star_values_guaranteed_4 = [0,0,0,0,97.5]
const star_values_guaranteed_5 = [0,0,0,0,0]
var weapon_pulled = 0
var deletylist = []
var reusablevar
var costume
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func gacha(tenx):
	if tenx:
		for i in range(9):
			pull_weapon(star_values_normal)
		pull_weapon(star_values_guaranteed_3)
	else: 
		pull_weapon(star_values_normal)

func pull_weapon(star_values):
	var randstar = randi() % 100 + 1
	if randstar > star_values[4]:
		weapon_pulled = rand_weapon(5)
	elif randstar > star_values[3]:
		weapon_pulled = rand_weapon(4)
	elif randstar > star_values[2]:
		weapon_pulled = rand_weapon(3)
	elif randstar > star_values[1]:
		weapon_pulled = rand_weapon(2)
	else: 
		weapon_pulled = rand_weapon(1)
	set_animation(weapon_pulled)

func rand_weapon(stars):
	var sprites = GlobalScript.sprites.duplicate()
	for i in sprites:
		if sprites[i].stars == stars:
			deletylist.append(sprites[i])
	reusablevar = deletylist.pick_random()
	# reusablevar = sprites.find(reusablevar)
	for i in sprites:
		print(sprites[i])
	return reusablevar


func _on_pull_10x_pressed() -> void:
	gacha(true)



func _on_1x_button_pressed() -> void:
	gacha(false)
