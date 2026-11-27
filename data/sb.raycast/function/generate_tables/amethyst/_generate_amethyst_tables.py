from pathlib import Path

facing = ["up", "down", "north", "south", "east", "west"]

amethyst = ["small", "med", "large", "full"]
axes = ["x", "y", "z"]

def bounds_from_add(a, b):
    return {"min": a, "max": a + b}

def bounds_from_sub(a, b):
    return {"min": a - b, "max": a}

amethyst_to_bounds = {
    "small": {"width": {"min": 0.25, "max": 0.75}, "height": 0.1875},
    "med": {"width": {"min": 0.1875, "max": 0.8125}, "height": 0.25},
    "large": {"width": {"min": 0.1875, "max": 0.8125}, "height": 0.3125},
    "full": {"width": {"min": 0.1875, "max": 0.8125}, "height": 0.4375},
}

facing_to_bound = {
    "up": 0.0,
    "down": 1.0,
    "north": 1.0,
    "south": 0.0,
    "east": 0.0,
    "west": 1.0,
}

facing_to_op = {
    "up": bounds_from_add,
    "down": bounds_from_sub,
    "north": bounds_from_sub,
    "south": bounds_from_add,
    "east": bounds_from_add,
    "west": bounds_from_sub,
}

facing_to_axis = {
    "up": "y",
    "down": "y",
    "north": "z",
    "south": "z",
    "east": "x",
    "west": "x",
}

facing_to_perp_axes = {
    "up": ["x", "z"],
    "down": ["x", "z"],
    "north": ["x", "y"],
    "south": ["x", "y"],
    "east": ["y", "z"],
    "west": ["y", "z"],
}

def generate_amethyst_table(amethyst: str, facing: str) -> str:
    bounds = amethyst_to_bounds[amethyst]
    table = {"min": {}, "max": {}}
    height = facing_to_op[facing](facing_to_bound[facing], amethyst_to_bounds[amethyst]["height"])
    table["min"][facing_to_axis[facing]] = height["min"]
    table["max"][facing_to_axis[facing]] = height["max"]

    width = amethyst_to_bounds[amethyst]["width"]
    for perp in facing_to_perp_axes[facing]:
        table["min"][perp] = width["min"]
        table["max"][perp] = width["max"]

    return f'''\
data modify storage sensha_beams:raycast/table amethyst.{amethyst}_{facing} set value \\
    [ \\
        {{min: {{x: {table["min"]["x"]}, y: {table["min"]["y"]}, z: {table["min"]["z"]}}}, max: {{x: {table["max"]["x"]}, y: {table["max"]["y"]}, z: {table["max"]["z"]}}}}} \\
    ]
'''

for gem in amethyst:
    for face in facing:
        path = Path(f"data/sb.raycast/function/generate_tables/amethyst/{gem}_{face}.mcfunction")
        with open(path, "w") as file:
            file.write(generate_amethyst_table(gem, face))