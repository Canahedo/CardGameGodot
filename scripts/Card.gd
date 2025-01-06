class_name Card
extends Node2D

const card_scene: PackedScene = preload("res://scenes/Card.tscn")

var card_name: String
var card_sprite_x: int
var card_sprite_y: int
var face_down: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite2D.region_rect = Rect2(card_sprite_x ,card_sprite_y , 92, 136)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
