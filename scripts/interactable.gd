extends Area2D

var playerInRange : bool = false
@onready var player : CharacterBody2D = %Player
@export var HUDName : String

func _on_body_entered(_body: Node2D) -> void:
	playerInRange = true

func _on_body_exited(_body: Node2D) -> void:
	playerInRange = false

func _process(_delta: float) -> void:
	if playerInRange and Input.is_action_just_pressed("interact"):
		player.openGUI(HUDName)
