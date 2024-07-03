extends Node2D

@export var Mutations : Array
@export var DebugMenuActive : bool = false

func _ready() -> void:
	var path = "res://assets/guys/mutations/"
	var dir : PackedStringArray = DirAccess.get_files_at(path)
	for file_name in dir:
		if !file_name.begins_with(".") and !file_name.ends_with(".import"):
			Mutations.append(load(path + "/" + file_name))

func _process(_delta : float) -> void:
	if Input.is_action_just_pressed("debug_menu"):
		DebugMenuActive = !DebugMenuActive
	if DebugMenuActive:
		ImGui.Begin("ImGui")
		ImGui.Text("Hello, world!")
		ImGui.End()
