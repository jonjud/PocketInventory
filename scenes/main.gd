extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func add_wood() -> void :
	var wood : ItemData = preload("res://items/wood.tres")
	$Inventory.add_item(wood , 1)

func add_stone() -> void:
	var stone : ItemData = preload("res://items/stone.tres")
	$Inventory.add_item(stone , 1)
