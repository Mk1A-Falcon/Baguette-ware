extends Node

const default_played = 1
const default_runs = 5 #what this does is sets a non-tangiable value so we can reset to this

var baguettes_played = 1
var runs_left = 5

#code was self-written though logic is from @godot_community
func back_to_basics(): #subtle promotion but do #back-to-basics
	baguettes_played = default_played
	runs_left = default_runs

func stat_reset():
	if baguettes_played >= 3 or runs_left == 0:
		back_to_basics() #idt creating 2 functions was necessary tbh
