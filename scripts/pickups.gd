extends Node2D

@onready var player: CharacterBody2D = $"../Player"
@onready var area_2d: Area2D = $Area2D
@onready var player_area: CollisionShape2D = $CollisionShape2D

signal baguettes_connected
func _physics_process(delta: float) -> void:
	if player_area.overlaps_area(area_2d):
		if self.visible:
			emit_signal("baguettes_connected")
			self.hide()
