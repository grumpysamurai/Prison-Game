extends Node3D
@onready var label_3d = $Label3D

var gateoperation = ''
var gatenumber = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	gateoperation = randomoperation()
	gatenumber = randomnumber()
	label_3d.text = gateoperation + str(gatenumber)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_3d_body_entered(body):
	body.gate(gateoperation, gatenumber)

func randomoperation():
	var operation = ''
	var randomnumber = randi_range(1, 4)
	if randomnumber == 1:
		operation = '+'
	if randomnumber == 2:
		operation = '-'
	if randomnumber == 3:
		operation = 'x'
	if randomnumber == 4:
		operation = '/'
	return operation

func randomnumber():
	var randomnumber = randi_range(1, 25)
	return randomnumber
