extends Node2D

var wood : ItemData = preload("res://items/wood.tres")
var stone : ItemData = preload("res://items/stone.tres")
var berry : ItemData

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func add_wood() -> void :
	$Inventory.add_item(wood , 1)

func add_stone() -> void:
	
	$Inventory.add_item(stone , 1)

func get_all_amount_btn() -> void:
	print($Inventory.get_amount(wood))
	print($Inventory.get_amount(stone))
	print($Inventory.get_amount(berry))
