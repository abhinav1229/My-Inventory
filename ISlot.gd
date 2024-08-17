extends TextureRect

signal OnResultSuccessfull(item)

@export var item_data : ItemData = null  # This will hold the item data for the slot

func SayHi():
	print("Say Hi")

#
#func _ready():
#	if item_data != null:
#		texture = item_data.icon_texture
#		item_data.name = "Pintu"
#
#func _get_drag_data(position):
#	var drag_data = item_data
#	var preview = TextureRect.new()
#	preview.texture = self.texture
#	set_drag_preview(preview)
#	return drag_data
#
#func _can_drop_data(position, data):
#	print("Data: ", data.name)
##	if self.name == "ISlot2":
##		return true  # Allow dropping in any slot
##	return false
#
#	return true
#
#func _drop_data(position, data):
#	if item_data == null:
#		item_data = data  # Move the item to this slot
#	else:
#		var temp = item_data
#		item_data = data  # Swap items
#		return temp  # Return the old item back to its original slot
