extends Node

@export
var ingredient : Ingredient

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start_timer()


func start_timer() -> void:
	$Timer.wait_time = ingredient.spawn_time
	$Timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# Update Ingredient Sprite
	if ingredient :
		if $IngredientSprite.texture != ingredient.sprite :
			$IngredientSprite.texture = ingredient.sprite
	
	# Update Countdown
	var countdown = floor($Timer.time_left) + 1
	$Countdown.text = str(countdown)


func spawn_ingredient() -> void:
	print(ingredient.name)


func _on_timer_timeout() -> void:
	if ingredient :
		spawn_ingredient()
	else :
		print("No Ingredient Set")
