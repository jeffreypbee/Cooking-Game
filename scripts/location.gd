extends Node2D


@export
var location_name : String = "unknown"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$NameLabel.text = location_name


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
