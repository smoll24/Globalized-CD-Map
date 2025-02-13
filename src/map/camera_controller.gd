extends Camera2D

var zoom_target : Vector2
var camera_pan_rate = 10

var dragStartMousePos = Vector2.ZERO
var dragStartCameraPos = Vector2.ZERO
var dragging : bool = false

@onready var info = get_node("/root/Map_Scene/overlay_frame/overlay_info")


func _ready() -> void:
	zoom_target = zoom


func _process(delta: float) -> void:
	zoom_cam()
	simple_pan()
	click_and_drag()
	

func zoom_cam():
	if Input.is_action_just_pressed("camera_zoom_in") and zoom.x < 2:
		if info.visible == false:
			zoom_target *= 1.1
		elif get_viewport().get_mouse_position().x < 1280:
			zoom_target *= 1.1
		
	if Input.is_action_just_pressed("camera_zoom_out") and zoom.x > 0.25:
		if info.visible == false:
			zoom_target *= 0.9
		elif get_viewport().get_mouse_position().x < 1280:
			zoom_target *= 0.9
	
	#Smoother zoom
	zoom = zoom.slerp(zoom_target, 1)
	
	
func simple_pan():
	if Input.is_action_pressed("camera_move_right"):
		position.x += camera_pan_rate
	if Input.is_action_pressed("camera_move_left"):
		position.x -= camera_pan_rate
	if Input.is_action_pressed("camera_move_up"):
		position.y -= camera_pan_rate
	if Input.is_action_pressed("camera_move_down"):
		position.y += camera_pan_rate
	
	
	
func click_and_drag():
	if !dragging and Input.is_action_just_pressed("camera_pan"):
		dragStartMousePos = get_viewport().get_mouse_position()
		dragStartCameraPos = position
		dragging = true
		
	if dragging and Input.is_action_just_released("camera_pan"):
		dragging = false
		
	if dragging:
		var moveVector = get_viewport().get_mouse_position() - dragStartMousePos
		position = dragStartCameraPos - moveVector * 1/zoom.x
