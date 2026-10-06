extends CharacterBody2D


# Movement
@export var speed: float = 100.0
@export var accel: float = 1000.0
@export var fric: float = 1200.0

var dir: Vector2 = Vector2.ZERO
var inventory : Inventory


func _ready() -> void:
	add_to_group("Player")

func setup(_inventory : Inventory) -> void :
	inventory = _inventory

func handle_movement(delta: float) -> void:
	dir = Input.get_vector(
		"move_left",
		"move_right",
		"move_up",
		 "move_down"
	)

	if dir != Vector2.ZERO:
		velocity.x = move_toward(
			velocity.x,
			speed * dir.x,
			accel * delta
		)

		velocity.y = move_toward(
			velocity.y,
			speed * dir.y,
			accel * delta
		)

	else:
		velocity.x = move_toward(
			velocity.x,
			0.0,
			fric * delta
		)

		velocity.y = move_toward(
			velocity.y,
			0.0,
			fric * delta
		)

func handle_pickup(item : ItemData , amount : int) -> void :
	inventory.add_item(item , amount)

func _physics_process(delta: float) -> void:
	handle_movement(delta)
	move_and_slide()
