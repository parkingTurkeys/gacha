extends Node
const dmgtypes = [
	"Psychic", "Poison", "Slashing", "Necrotic", "UwU", "Blunt", "Burning"
]
var sprites = [
	{ "name": "Rainbow Pencil", "stars": 1, "dmgtype": 6},
	{"name": "Flower Pencil", "stars": 1, "dmgtype": 6},
	{"name": "Fire Pencil", "stars": 1, "dmgtype": 6},
	{"name": "Rainbow Pencil +", "stars": 2, "dmgtype": 3},
	{"name": "Flower Pencil +", "stars": 2, "dmgtype": 3},
	{"name": "Fire Pencil +", "stars": 2, "dmgtype": 3},
	{"name": "Croissant Grenade", "stars": 3, "dmgtype": 7},
	{"name": "Knife", "stars": 2, "dmgtype": 3},
	{"name": "Fire Extinguisher", "stars": 1, "dmgtype": 4},
	{"name": "Poisoner", "stars": 3, "dmgtype": 2},
	{"name": "Evil Clippy", "stars": 5, "dmgtype": 3},
	{"name": "Bow and Arrow", "stars": 3, "dmgtype": 3},
	{"name": "Teabag", "stars": 1 , "dmgtype": 1},
	{"name": "Rope", "stars": 2, "dmgtype": 4},
	{"name": "Skull", "stars": 3, "dmgtype":4},
	{"name": "Poisoned Teabag", "stars": 4, "dmgtype":2},
	{"name": "Eyeball", "stars": 3, "dmgtype":4},
	{"name": "Baguette Laser", "stars": 4, "dmgtype":4},
	{"name": "Table Leg", "stars": 1, "dmgtype":6},
	{"name": "Shard of Glass", "stars": 2, "dmgtype":3},
	{"name": "NUKE!", "stars": 5, "dmgtype":4},
	{"name": "Sir Baguette", "stars": 5, "dmgtype":1},
	{"name": "Croissant Launcher", "stars": 4, "dmgtype":7},
	{"name": "Match", "stars": 2, "dmgtype":7},
	{"name": "Rock", "stars": 1, "dmgtype":6},
	{"name": "Baguette", "stars": 3, "dmgtype":1},
	{"name": "Gambling Machine", "stars": 3, "dmgtype":1},
	{"name": "Monocle", "stars": 1, "dmgtype":3},
	{"name": "Sir Teacup", "stars": 5, "dmgtype":1},
	{"name": "Arrow", "stars": 2, "dmgtype":3},
	{"name": "Broom", "stars": 1, "dmgtype":6},
	{"name": "Poison", "stars": 2, "dmgtype":2},
	{"name": "Lighter", "stars": 3, "dmgtype":7},
	{"name": "Teacup", "stars": 1, "dmgtype":6},
	{"name": "UwU", "stars": 5, "dmgtype":5},
	{"name": "Poisonest™️", "stars": 4, "dmgtype":2},
	{"name": "Microwaved Tea", "stars": 1, "dmgtype":2},
	{"name": "LED pipe", "stars": 1, "dmgtype":6},
	{"name": "Backpack", "stars": 2, "dmgtype":6},
	{"name": "Earth", "stars": 1, "dmgtype":6},
	{"name": ":3", "stars": 5, "dmgtype":5},
	{"name": "Apple", "stars": 1, "dmgtype":6},
	{"name": "Pride Flag", "stars": 1, "dmgtype":5},
	{"name": "Blåhaj", "stars": 5, "dmgtype":5},
	{"name": "Crown", "stars": 2, "dmgtype":6},

 
]

var inventory = {}
 
