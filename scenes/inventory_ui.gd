extends Control

var inventory : Inventory
var entry_ui_scene : PackedScene = preload("res://scenes/inventory_entry_ui.tscn")


func setup(_inventory : Inventory) -> void :
	inventory = _inventory
	inventory.inventory_changed.connect(_on_inventory_changed)
	refresh(inventory)

func _on_inventory_changed() -> void :
	refresh(inventory)

func refresh(inventory : Inventory) -> void :
	# 1. ลบ UI เก่า
	for child in $EntryList.get_children() :
		child.queue_free()
	# 2. อ่าน State ปัจจุบัน
	for entry in inventory.storage :
		# 3. สร้าง UI ตาม State
		var instanced_entry_ui := entry_ui_scene.instantiate()
		$EntryList.add_child(instanced_entry_ui)
		instanced_entry_ui.setup(entry)
