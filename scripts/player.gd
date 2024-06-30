extends CharacterBody2D

const SPEED = 130.0

var guiOpened

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
	if guiOpened and Input.is_action_just_pressed("interact"):
		closeGUI(guiOpened)

func closeGUI(guiToClose):
	guiToClose.visible = false
	guiToClose = false

func openGUI(guiToOpen):
	if guiOpened:
		closeGUI(guiOpened)
	guiOpened = guiToOpen
	guiOpened.visible = true
