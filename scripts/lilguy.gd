class_name LilGuy extends Resource

enum GuyType {QUEEN, PRINCESS, DRONE}

@export var Type : GuyType
@export var activeGenes : Genes
@export var inactiveGenes: Genes

func RandFromOptions(pa, pi, da, di):
	match (randi_range(0, 3)):
		0:
			return [pa, da]
		1:
			return [pa, di]
		2:
			return [pi, da]
		3:
			return [pi, di]

func MutateFromSpecies(pa, pi, da, di):
	var pureRandom = RandFromOptions(pa, pi, da, di)
	#add mutations
	if pureRandom[0] != pureRandom[1]:
		#TODO: read mutations from a config file.
		pass
	return pureRandom

func BreedGuys(princess : LilGuy, drone : LilGuy) -> Array[LilGuy]:
	var newGuys : Array[LilGuy] = []
	for i in princess.activeGenes.Fertility:
		# TODO: Good God, clean this up.
		var newGuy : LilGuy
		var species = MutateFromSpecies(princess.activeGenes.Species, princess.inactiveGenes.Species, drone.activeGenes.Species, drone.inactiveGenes.Species)
		newGuy.activeGenes.Species = species[0]
		newGuy.inactiveGenes.Species = species[1]
		var temperature = RandFromOptions(princess.activeGenes.Temperature, princess.inactiveGenes.Temperature, drone.activeGenes.Temperature, drone.inactiveGenes.Temperature)
		newGuy.activeGenes.Temperature = temperature[0]
		newGuy.inactiveGenes.Temperature = temperature[1]
		var tempTol = RandFromOptions(princess.activeGenes.TemperatureTolerance, princess.inactiveGenes.TemperatureTolerance, drone.activeGenes.TemperatureTolerance, drone.inactiveGenes.TemperatureTolerance)
		newGuy.activeGenes.TemperatureTolerance = tempTol[0]
		newGuy.inactiveGenes.TemperatureTolerance = tempTol[1]
		var humidity = RandFromOptions(princess.activeGenes.Humidity, princess.inactiveGenes.Humidity, drone.activeGenes.Humidity, drone.inactiveGenes.Humidity)
		newGuy.activeGenes.Humidity = humidity[0]
		newGuy.inactiveGenes.Humidity = humidity[1]
		var humTol = RandFromOptions(princess.activeGenes.HumidityTolerance, princess.inactiveGenes.HumidityTolerance, drone.activeGenes.HumidityTolerance, drone.inactiveGenes.HumidityTolerance)
		newGuy.activeGenes.HumidityTolerance = humTol[0]
		newGuy.inactiveGenes.HumidityTolerance = humTol[1]
		var lifespan = RandFromOptions(princess.activeGenes.Lifespan, princess.inactiveGenes.Lifespan, drone.activeGenes.Lifespan, drone.inactiveGenes.Lifespan)
		newGuy.activeGenes.Lifespan = lifespan[0]
		newGuy.inactiveGenes.Lifespan = lifespan[1]
		var speed = RandFromOptions(princess.activeGenes.Speed, princess.inactiveGenes.Speed, drone.activeGenes.Speed, drone.inactiveGenes.Speed)
		newGuy.activeGenes.Speed = speed[0]
		newGuy.inactiveGenes.Speed = speed[1]
		var pollination = RandFromOptions(princess.activeGenes.Pollination, princess.inactiveGenes.Pollination, drone.activeGenes.Pollination, drone.inactiveGenes.Pollination)
		newGuy.activeGenes.Pollination = pollination[0]
		newGuy.inactiveGenes.Pollination = pollination[1]
		var flowers = RandFromOptions(princess.activeGenes.Flowers, princess.inactiveGenes.Flowers, drone.activeGenes.Flowers, drone.inactiveGenes.Flowers)
		newGuy.activeGenes.Flowers = flowers[0]
		newGuy.inactiveGenes.Flowers = flowers[1]
		var fertility = RandFromOptions(princess.activeGenes.Fertility, princess.inactiveGenes.Fertility, drone.activeGenes.Fertility, drone.inactiveGenes.Fertility)
		newGuy.activeGenes.Fertility = fertility[0]
		newGuy.inactiveGenes.Fertility = fertility[1]
		var area = RandFromOptions(princess.activeGenes.Area, princess.inactiveGenes.Area, drone.activeGenes.Area, drone.inactiveGenes.Area)
		newGuy.activeGenes.Area = area[0]
		newGuy.inactiveGenes.Area = area[1]
		newGuys.append(newGuy)
	return newGuys

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
