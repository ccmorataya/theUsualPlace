
extends Container

var comer = false

func _ready():
	set_fixed_process(true)


func _fixed_process(delta):
	var oneStatus = get_node("ChairOne")
	var twoStatus = get_node("ChairTwo")
	var threeStatus = get_node("ChairThree")
	var fourStatus = get_node("ChairFour")
	var fiveStatus = get_node("ChairFive")
	
	if (oneStatus.is_pressed() && twoStatus.is_pressed() && threeStatus.is_pressed() && fourStatus.is_pressed() && fiveStatus.is_pressed() ):
		comer = true
	elif (!oneStatus.is_pressed() && !twoStatus.is_pressed() && !threeStatus.is_pressed() && !fourStatus.is_pressed() && !fiveStatus.is_pressed() ):
		comer = false
	
	print(comer)