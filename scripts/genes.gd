class_name Genes extends Resource

enum SpeciesType {FOREST, MEADOWS, MODEST, TROPICAL, WINTRY, MARSHY, WATER, ROCKY, VALIANT, ENDER, COMMON}
enum TemperatureType {ICY, COLD, NORMAL, WARM, HOT, HELLISH}
enum HumidityType {ARID, NORMAL, DAMP}
enum LifespanType {LONGEST, LONGER, LONG, ELONGATED, NORMAL, SHORTENED, SHORT, SHORTER, SHORTEST}
enum SpeedType {FASTEST, FASTER, FAST, NORMAL, SLOW, SLOWER, SLOWEST}
enum PollinationType {SLOWEST, SLOWER, SLOW, AVERAGE, FAST, FASTER, FASTEST, MAXIMUM}
enum FlowersType {FLOWERS} #TODO: Add more flower types.
enum AreaType {LARGEST, LARGER, LARGE, AVERAGE}

@export var Species : SpeciesType
@export var Temperature : TemperatureType
@export var TemperatureTolerance : int
@export var Humidity : HumidityType
@export var HumidityTolerance : int
@export var Lifespan : LifespanType
@export var Speed : SpeedType
@export var Pollination : PollinationType
@export var Flowers : FlowersType
@export var Fertility : int:
	set (value):
		Fertility = clamp(value, 1, 4)
@export var Area : AreaType
@export var Day : bool
@export var Night : bool
@export var Rain : bool
@export var Cave : bool
