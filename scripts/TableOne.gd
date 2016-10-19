
extends Container

var comer = false

func _ready():
	set_fixed_process(true)


func _fixed_process(delta):
	var oneStatus = get_node("ChairOne")
	print(oneStatus.is_pressed())
	pass