extends PopupMenu

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _input_event(event):
	var estofado = get_node("btn_estofado")
	var costilla = get_node("btn_costilla")
	var lasagna = get_node("btn_lasagna")
	var hamburguesa = get_node("btn_hamburguesa")
	var sopa = get_node("btn_sopa")
	var helado = get_node("btn_helado")
	
	if (estofado.is_pressed() && estofado.set_process_input(true).is_action_pressed("click")):
		global.time += 40
	if (costilla.is_pressed()):
		global.time += 30
	if (lasagna.is_pressed()):
		global.time += 25
	if (hamburguesa.is_pressed()):
		global.time += 20
	if (sopa.is_pressed()):
		global.time += 10
	if (helado.is_pressed()):
		global.time += 5
#	var label = get_node("Menu")
#	if(event.is_pressed()):
#		print(label)