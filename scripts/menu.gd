extends Control

@onready var player : CharacterBody2D = %Player

var menuFadePercent : float = 0.0

@export var maxFade : float = 0.5
@export var secondsToFade : float = 0.5

func setAlpha(nodes : Array[Node]):
	for n in nodes:
		n.self_modulate.a = 1 - menuFadePercent
		setAlpha(n.get_children())

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta : float) -> void:
	if player.velocity.length() > 0:
		menuFadePercent += delta / secondsToFade
		menuFadePercent = min(maxFade, menuFadePercent)
	else:
		menuFadePercent -= delta / secondsToFade
		menuFadePercent = max(0, menuFadePercent)
	
	self_modulate.a = 1 - menuFadePercent
	setAlpha(get_children())
