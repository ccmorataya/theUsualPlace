
extends Button

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _input_event(event):
	var toggle = false
	if (self.is_pressed()):
		toggle = true
		if (toggle):
			global.timeT1 += 40
			global.menuT1.hide()
			global.statusT1.append(true)