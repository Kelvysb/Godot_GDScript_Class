extends Node3D

@export var inteiro : int = 1
@onready var decimal : float = 0.0
var boleano : bool = false
var text : String = 'texto'

var vector2 : Vector2 = Vector2.ZERO
var vector3 : Vector3 = Vector3.ZERO
var vector4 : Vector4 = Vector4.ZERO

var array : Array[String] = ["text", "text2"]

var dicionario : Dictionary = {}

@onready var ball = $Ball

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direcao = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	if direcao.length() > 0:
		ball.apply_impulse(Vector3(direcao.y, 0.0, -direcao.x).normalized() * 0.5)
