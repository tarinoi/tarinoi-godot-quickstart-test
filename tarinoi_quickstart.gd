extends "res://addons/tarinoi/scenes/tarinoi_quickstart.gd"


## Override this to register your game's bindings before sync runs.
## Example:
##   func _setup_bindings() -> void:
##       var vars := MyVariables.new()
##       TarinoiRuntime.registry.bind_variable_collection("global", vars)
##       TarinoiRuntime.registry.bind_function_collection("global", MyFunctions.new(vars))
func _setup_bindings() -> void:
	pass
