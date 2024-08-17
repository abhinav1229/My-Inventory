extends TextureRect

@export var item_data_obj : ItemData = null  # This will hold the item data for the slot

func _ready():
	self.connect("OnResultSuccessfull", Callable($"../../../InventoryContainer/GridContainer/ISlot", "SayHi"))
	
	if item_data_obj != null:
		texture = item_data_obj.icon_texture
		item_data_obj.name = "Pintu"

func _get_drag_data(position):
	var drag_data = item_data_obj
	var preview = TextureRect.new()
	preview.texture = self.texture
	set_drag_preview(preview)
	return drag_data

func _can_drop_data(position, data):
	emit_signal("OnResultSuccessfull")
	return true

func _drop_data(position, data):
	if item_data_obj == null:
		item_data_obj = data  # Move the item to this slot
	else:
		var temp = item_data_obj
		item_data_obj = data  # Swap items
		return temp  # Return the old item back to its original slot
