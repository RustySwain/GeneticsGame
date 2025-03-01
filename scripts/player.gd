extends CharacterBody2D

const SPEED = 130.0

var guiOpened : String
var guiJustClosed : bool

@export var Huds : Dictionary
@onready var hudsNode : CanvasLayer = %HUDs

func _physics_process(_delta: float) -> void:
	# Movement Input.
	var right = Input.get_axis("move_left", "move_right")
	velocity.x = SPEED * right
	var up = Input.get_axis("move_up", "move_down")
	velocity.y = SPEED * up
	if velocity.length_squared() > SPEED * SPEED:
		velocity = velocity.normalized() * SPEED

	move_and_slide()
	
	# Inventory Input.
	if guiOpened and !guiJustClosed and (Input.is_action_just_released("interact") or Input.is_action_just_released("ui_escape")):
		closeGUI(guiOpened)
	else:
		guiJustClosed = false

func closeGUI(guiToClose : String):
	hudsNode.get_node(Huds[guiToClose]).visible = false
	guiOpened = ""
	guiJustClosed = true

func openGUI(guiToOpen : String):
	if guiToOpen == "":
		pass
	if guiOpened != "":
		closeGUI(guiOpened)
	elif !guiJustClosed:
		guiOpened = guiToOpen
		hudsNode.get_node(Huds[guiOpened]).visible = true
