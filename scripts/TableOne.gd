extends Container

func _ready():
	get_node("Eating/anim").play("anim")
	set_process(true)

func _process(delta):
	var oneStatus = get_node("ChairOne")
	var twoStatus = get_node("ChairTwo")
	var threeStatus = get_node("ChairThree")
	var fourStatus = get_node("ChairFour")
	var fiveStatus = get_node("ChairFive")
	var eatSprite = get_node("Eating")
	
	if (oneStatus.is_pressed() && twoStatus.is_pressed() && threeStatus.is_pressed() && fourStatus.is_pressed() && fiveStatus.is_pressed() ):
		eatSprite.show()
	elif (!oneStatus.is_pressed() && !twoStatus.is_pressed() && !threeStatus.is_pressed() && !fourStatus.is_pressed() && !fiveStatus.is_pressed() ):
		eatSprite.hide()