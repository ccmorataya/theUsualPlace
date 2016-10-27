extends Container
var play = false
var is_playing = false
var status = [false, false, false, false, false]
var count = 0
var blocked = false
var thread = Thread.new()

func _ready():
	#thread.start( self, "print_text", ["Thread-1"] )
	var timer = get_node("Eating/eatingTime")
	timer.connect("timeout", self, "print_time")
	set_process(true)

func _process(delta):
	#print(time)
	#print(global.time)
	var label = get_node("seconds")
	var eatSprite = get_node("Eating")
	var player = get_node("Eating/SamplePlayer")
	var table = get_node("nd_table/Table")
	var voiceID = 0
	var timer = get_node("Eating/eatingTime")
	
	label.set_text(str(global.time, " seconds remaining" ))

	if (count > 0):
		table.set_frame(count)
	if (play):
		if (!is_playing):
			get_node("Eating/anim").play("anim")
			voiceID = player.play("test")
			is_playing = true
			timer.start()
	else:
		get_node("Eating/anim").stop()
		player.stop_all()
	
	if (status[0] && status[1] && status[2] && status[3] && status[4]):
		eatSprite.show()
		play = true
	if (global.time <= 0):
		timer.stop()
		eatSprite.hide()
		play = false
		is_playing = false
		table.set_frame(0)
		global.time = 0
		status[0] = false
		status[1] = false
		status[2] = false
		status[3] = false
		status[4] = false
		blocked = false
		count = 0

func _input_event(event):
	#var menu = get_node("/root/Restaurant").get_node("PopupMenu")
	var item = global.menu.get_node("Menu")
	if (count < 5 && !blocked):
		if (event.is_pressed()):
			global.menu.popup()
			status[count] = true
			count += 1
	else:
		blocked = true

func print_text( Arg1 ):
	print(Arg1)

func print_time():
	global.time -= 1
	print(global.time)