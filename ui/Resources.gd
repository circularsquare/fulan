extends Tree

var wood = 0
var time = 0
var names = ['wood', 'stone', 'herbs', 'vegetables', 'fruits', 'metals', 'gems', 'b', 'c', 'd', 'e', 'f', 'g', 'h']
var resources = {}

func _ready():
	var root = create_item()
	hide_root = true
	for n in names:
		resources[n] = create_item(root)
		resources[n].set_text(0, n)

func _on_timer_timeout():
	time += 1.0/Data.tps
	wood += 1.0/Data.tps
	if resources.wood:
		resources.wood.set_text(0, str(int(floor(wood))))
	
	
