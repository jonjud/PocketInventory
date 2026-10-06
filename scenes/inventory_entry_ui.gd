extends Control


func _ready() -> void:
	pass

#set up the variables to use in code
func setup(entry : InventoryEntry) -> void:
	#use direct get_node reference cause the gd is attach to tree of node
	$ItemLabel.text = "%s : %d" %[entry.item.item_name,entry.amount]
