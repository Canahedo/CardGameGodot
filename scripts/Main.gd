extends Node2D

var deck_list = []
var rank_loc_dict = {}
var suit_loc_dict = {
	"C":4,
	"D":148,
	"S":292,
	"H":436
}
	
func get_card_cords(rank,suit):
	var card_x = rank_loc_dict[rank]
	var card_y = suit_loc_dict[suit]
	return [card_x,card_y]
	
	
# Called when the node enters the scene tree for the first time.
func _ready():
	
	# Build Deck List
	for suit in ["C", "D", "S", "H"]:
		for rank in range(2,11):
			deck_list.append([str(rank), suit])
		for rank in ["J", "Q", "K", "A"]:
			deck_list.append([str(rank), suit])
			
	# Builds dict of card rank locations on asset sheet
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
		rank_loc_dict[x] = (i * 100) + 4
	
	# Test
	$Sprite2D.region_rect = Rect2(rank_loc_dict["A"] ,suit_loc_dict["S"] , 92, 136)	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
