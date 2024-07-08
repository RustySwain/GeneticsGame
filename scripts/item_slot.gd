extends TextureRect

@export var selected : bool = false
@export var defaultTexture : Texture2D
@export var selectedTexture : Texture2D

@export var canInput : bool = true
@export var canOutput : bool = true

func _on_mouse_entered() -> void:
	if visible:
		selected = true
		texture = selectedTexture

func _on_mouse_exited() -> void:
	if visible:
		selected = false
		texture = defaultTexture

func _process(_delta : float) -> void:
	if selected and Input.is_action_just_released("ui_left_click"):
		#TODO: Manage items on left click.
		pass
	if selected and Input.is_action_just_released("ui_right_click"):
		#TODO: Manage items on right click.
		pass
