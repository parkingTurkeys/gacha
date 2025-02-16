extends AnimatedSprite2D
const star_values_normal = [0.0,70.0,85.0,92.5,97.5]
const star_values_guaranteed_3 = [0,0,0,92.5,97.5]
const star_values_guaranteed_4 = [0,0,0,0,97.5]
const star_values_guaranteed_5 = [0,0,0,0,0]
var weapon_pulled = 0
var deletylist = []
var reusablevar
var costume
var index = 0
var sprites = GlobalScript.sprites

@onready var weapon_name_label = $"weapon-name"
@onready var stars_label = $"stars"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_animation("default")
	print(GlobalScript.sprites[1])

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func gacha(tenx):
	if tenx:
		print("yay mo money")
		for i in range(9):
			pull_weapon(star_values_normal)
			await get_tree().create_timer(1).timeout
		pull_weapon(star_values_guaranteed_3)
	else: 
		pull_weapon(star_values_normal)

func pull_weapon(star_values):
	var randstar = randi() % 100 + 1
	if randstar > star_values[4]:
		weapon_pulled = rand_weapon(5)
		stars_label.text = "⭐⭐⭐⭐⭐!!!"
	elif randstar > star_values[3]:
		weapon_pulled = rand_weapon(4)
		stars_label.text = "⭐⭐⭐⭐!!"
	elif randstar > star_values[2]:
		weapon_pulled = rand_weapon(3)
		stars_label.text = "⭐⭐⭐!"
	elif randstar > star_values[1]:
		weapon_pulled = rand_weapon(2)
		stars_label.text = "⭐⭐"
	else: 
		weapon_pulled = rand_weapon(1)
		stars_label.text = "⭐"
	set_animation(weapon_pulled)
	reusablevar = sprites[int(weapon_pulled)].name
	weapon_name_label.text = reusablevar
	
	

func rand_weapon(starsnum):
	if sprites.is_empty():
		pass
	for i in sprites:
		reusablevar = sprites[index]
		if reusablevar.stars == starsnum:
			deletylist.append(sprites[index])
		index = index + 1
	index = 0
	reusablevar = deletylist.pick_random()
	reusablevar = sprites.find(reusablevar)
	reusablevar = str(reusablevar)
	return reusablevar


func _on_pull_10x_pressed() -> void:
	gacha(true)



func _on_1x_button_pressed() -> void:
	gacha(false)


# got this from here: https://forum.godotengine.org/t/is-there-a-wait-function-to-godot/38759

func wait(seconds: float) -> void:
	await get_tree().create_timer(seconds).timeout
