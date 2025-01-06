extends Node2D

var card



# Called when the node enters the scene tree for the first time.
func _ready():
	var x = 100
	await get_tree().create_timer(1).timeout
	var scene: PackedScene = preload("res://scenes/Card.tscn")
	
	var rank = "J"
	var suit = "S"
	
	for i in range(5):	
		var instance = scene.instantiate()
		instance.position = Vector2(i * x, 0)
		
		var card_sprite = $Deck.get_card_cords(rank,suit)
		instance.card_sprite_x = card_sprite[0]
		instance.card_sprite_y = card_sprite[1]
		add_child(instance)
		await get_tree().create_timer(1).timeout
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


