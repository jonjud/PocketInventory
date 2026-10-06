extends Node2D

var wood : ItemData = preload("res://items/wood.tres")
var stone : ItemData = preload("res://items/stone.tres")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$InventoryUI.setup($Inventory)
	$Player.setup($Inventory)


func add_wood() -> void :
	$Inventory.add_item(wood , 1)

func add_stone() -> void:
	$Inventory.add_item(stone , 1)
