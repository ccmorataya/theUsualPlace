extends Container
var play = false
var is_playing = false
var status = [false, false, false, false, false]
var count = 0
var blocked = false
var thread = Thread.new()

func _ready():
	thread.start( self, "print_text", ("Thread-1") )#, 2 ) )
	#thread.start( print_time, ("Thread-2", 4, ) )
	set_process(true)

func _process(delta):
	var eatSprite = get_node("Eating")
	var player = get_node("Eating/SamplePlayer")
	var table = get_node("nd_table/Table")
	var voiceID = 0
	
	if (count > 0):
		table.set_frame(count)
	if (play):
		if (!is_playing):
			get_node("Eating/anim").play("anim")
			voiceID = player.play("test")
			is_playing = true
	else:
		get_node("Eating/anim").stop()
		player.stop_all()

	if (status[0] && status[1] && status[2] && status[3] && status[4]):
		eatSprite.show()
		play = true
	elif (!status[0] && !status[1] && !status[2] && !status[3] && !status[4]):
		eatSprite.hide()
		play = false
		is_playing = false

func _input_event(event):
	if (count < 5 && !blocked):
		if (event.is_pressed()):
			status[count] = true
			count += 1
			print(count)
	else:
		blocked = true
		#status[0-4] = false
		#count = 0

# Define a function for the thread
func print_time( threadName):#, delay):
   count = 0
   while count < 5:
      #time().sleep(delay)
      count += 1
      print("%s: %s" % threadName, time().ctime(time().time()) )

func print_text( Arg1 ):
	print(Arg1)