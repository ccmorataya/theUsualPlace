
extends Node

var eating = false
var timeT1 = 0
var timeT2 = 0
var timeT3 = 0
onready var menuT1 = get_node("/root/Restaurant").get_node("PopupMenu")
onready var menuT2 = get_node("/root/Restaurant").get_node("PopupMenu1")
onready var menuT3 = get_node("/root/Restaurant").get_node("PopupMenu2")
var statusT1 = []
var statusT2 = []
var statusT3 = []

var turn = 0