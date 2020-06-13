extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var timeDelay = 0
var label = null
var contador = 0
var frase1 = "Bienvenide detective Pajutimet"

# Called when the node enters the scene tree for the first time.
func _ready():
	label = get_node("Label")
	#label.text = "Hola cabesa"
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	timeDelay += delta
	if(timeDelay >= 0.1):
		if(contador<frase1.length()):
			label.text = label.text + frase1[contador]
		timeDelay = 0
		contador+=1
	pass
