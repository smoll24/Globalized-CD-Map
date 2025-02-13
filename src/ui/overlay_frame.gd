extends CanvasLayer

@onready var info = $overlay_info


@onready var one = $overlay_info/one
@onready var two = $overlay_info/two
@onready var three = $overlay_info/three
@onready var four = $overlay_info/four
@onready var five = $overlay_info/five
@onready var six = $overlay_info/six
@onready var seven = $overlay_info/seven

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_one_pressed() -> void:
	info.visible = true
	one.visible = true
	two.visible = false
	three.visible = false
	four.visible = false 
	five.visible = false
	six.visible = false
	seven.visible = false


func _on_two_pressed() -> void:
	info.visible = true
	one.visible = false
	two.visible = true
	three.visible = false
	four.visible = false 
	five.visible = false
	six.visible = false
	seven.visible = false


func _on_three_pressed() -> void:
	info.visible = true
	one.visible = false
	two.visible = false
	three.visible = true
	four.visible = false 
	five.visible = false
	six.visible = false
	seven.visible = false


func _on_four_pressed() -> void:
	info.visible = true
	one.visible = false
	two.visible = false
	three.visible = false
	four.visible = true 
	five.visible = false
	six.visible = false
	seven.visible = false


func _on_five_pressed() -> void:
	info.visible = true
	one.visible = false
	two.visible = false
	three.visible = false
	four.visible = false 
	five.visible = true
	six.visible = false
	seven.visible = false


func _on_six_pressed() -> void:
	info.visible = true
	one.visible = false
	two.visible = false
	three.visible = false
	four.visible = false 
	five.visible = false
	six.visible = true
	seven.visible = false


func _on_seven_pressed() -> void:
	info.visible = true
	one.visible = false
	two.visible = false
	three.visible = false
	four.visible = false 
	five.visible = false
	six.visible = false
	seven.visible = true


func _on_eight_pressed() -> void:
	info.visible = true
	one.visible = false
	two.visible = false
	three.visible = false
	four.visible = false 
	five.visible = false
	six.visible = false
	seven.visible = false


func _on_nine_pressed() -> void:
	info.visible = true
	one.visible = false
	two.visible = false
	three.visible = false
	four.visible = false 
	five.visible = false
	six.visible = false
	seven.visible = false
