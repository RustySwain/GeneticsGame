extends Area2D

var playerInRange : bool = false
@onready var player: CharacterBody2D = %Player

func _on_body_entered(body: Node2D) -> void:
	playerInRange = true

func _on_body_exited(body: Node2D) -> void:
	playerInRange = false

func _process(delta: float) -> void:
	if playerInRange and Input.is_action_just_pressed("interact"):
		player.openGUI(self)
		print("UI Opened")
