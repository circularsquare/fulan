extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	get_node('Timer').wait_time = 1.0/Data.tps
	get_node('Timer').start()
