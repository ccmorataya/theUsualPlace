extends Container
var play = false
var is_playing = false

func _ready():
	set_process(true)

func _process(delta):
	var oneStatus = get_node("ChairOne")
	var twoStatus = get_node("ChairTwo")
	var threeStatus = get_node("ChairThree")
	var fourStatus = get_node("ChairFour")
	var fiveStatus = get_node("ChairFive")
	var eatSprite = get_node("Eating")

	if (play):
		if (!is_playing):
			get_node("Eating/anim").play("anim")
			is_playing = true
	else:
		get_node("Eating/anim").stop()

	if (oneStatus.is_pressed() && twoStatus.is_pressed() && threeStatus.is_pressed() && fourStatus.is_pressed() && fiveStatus.is_pressed() ):
		eatSprite.show()
		play = true
	elif (!oneStatus.is_pressed() && !twoStatus.is_pressed() && !threeStatus.is_pressed() && !fourStatus.is_pressed() && !fiveStatus.is_pressed() ):
		eatSprite.hide()
		play = false
		is_playing = false