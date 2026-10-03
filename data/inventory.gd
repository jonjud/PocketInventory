extends Node
class_name Inventory


var storage : Array[InventoryEntry] = []

func _ready() -> void:
	pass
	

func add_item(item : ItemData, amount : int) -> void :
	var found : bool = false
	
	for i in storage :
		if item == i.item :
			i.amount += amount
			found = true
	if found == false :
		var new_entry : InventoryEntry = InventoryEntry.new()
		new_entry.item = item
		new_entry.amount = amount
		storage.append(new_entry)
	for j in storage :
		print(j.item.item_name ," ", j.amount )

func get_amount(item : ItemData) -> int :
	for i in storage :
		if i.item == item :
			return i.amount
	return 0
