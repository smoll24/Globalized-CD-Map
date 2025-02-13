extends Control

@onready var poly = $polycarbonate
@onready var alum = $aluminum
@onready var lacquer = $lacquer
@onready var record = $recording
@onready var manufac = $manufac
@onready var distrib = $distrib
@onready var waste = $waste
@onready var bauxite = $bauxite

@onready var poly_check = $overlay_legend/VBoxContainer/oil_container/CheckBox
@onready var alum_check = $overlay_legend/VBoxContainer/metal_container/CheckBox
@onready var lacquer_check = $overlay_legend/VBoxContainer/precious_container/CheckBox
@onready var record_check = $overlay_legend/VBoxContainer/record_container/CheckBox
@onready var manufac_check = $overlay_legend/VBoxContainer/manufac_container/CheckBox
@onready var distrib_check = $overlay_legend/VBoxContainer/dsitrib_container/CheckBox
@onready var waste_check = $overlay_legend/VBoxContainer/waste_container/CheckBox
@onready var bauxite_check = $overlay_legend/VBoxContainer/bauxite_container/CheckBox

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if poly_check.button_pressed:
		poly.visible = true
	else:
		poly.visible = false
		
	if alum_check.button_pressed:
		alum.visible = true
	else:
		alum.visible = false
		
	if lacquer_check.button_pressed:
		lacquer.visible = true
	else:
		lacquer.visible = false
		
	if record_check.button_pressed:
		record.visible = true
	else:
		record.visible = false
		
	if manufac_check.button_pressed:
		manufac.visible = true
	else:
		manufac.visible = false
		
	if distrib_check.button_pressed:
		distrib.visible = true
	else:
		distrib.visible = false
		
	if waste_check.button_pressed:
		waste.visible = true
	else:
		waste.visible = false
		
	if bauxite_check.button_pressed:
		bauxite.visible = true
	else:
		bauxite.visible = false
