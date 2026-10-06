extends Node2D

@export var item : ItemData
@export var amount : int = 1

var attracted : bool = false
var dir : Vector2
var player : CharacterBody2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player") :
		if body :
			player = body
			attracted = true

func _process(delta: float) -> void:
	if attracted :
		global_position = global_position.move_toward(player.global_position, 200.0 * delta)
		if global_position.distance_to(player.global_position) <= 0.5 :
			if player.has_method("handle_pickup"):
				player.handle_pickup(item,amount)
			queue_free()
