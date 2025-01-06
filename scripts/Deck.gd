extends Node2D

var card_rank_dict = {}
var card_suit_dict = {
	"C":4,
	"D":148,
	"S":292,
	"H":436
}
	
func get_card_cords(rank,suit):
	var card_x = card_rank_dict[rank]
	var card_y = card_suit_dict[suit]
	print(card_x,card_y)
	return [card_x,card_y]
	
	
# Called when the node enters the scene tree for the first time.
func _ready():
	var face_conversion = {
		0: "A",
		10: "J",
		11: "Q",
		12: "K" 
	}
	var x	
	for i in range(13):
		if i in face_conversion:
			x = face_conversion[i]
		else:
			x = str(i+1) 	
		card_rank_dict[x] = (i * 100) + 4

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
