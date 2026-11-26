import itertools
from pathlib import Path

connections = ["north", "south", "east", "west"]
connection_types = ["none", "low", "tall"]

def make_bounds(min_x: float, min_y: float, min_z: float, max_x: float, max_y: float, max_z: float) -> dict[dict[float]]:
    return {"min": {"x": min_x, "y": min_y, "z": min_z}, "max": {"x": max_x, "y": max_y, "z": max_z}}

# (east, west)
x_bounds = {
    ("none", "none"): [],
    ("none", "low"):  [make_bounds(0.0,    0.0,   0.3125,  0.6875, 0.875, 0.6875)],
    ("none", "tall"): [make_bounds(0.0,    0.0,   0.3125,  0.6875, 1.0,   0.6875)],
    ("low", "none"):  [make_bounds(0.3125, 0.0,   0.3125,  1.0,    0.875, 0.6875)],
    ("low", "low"):   [make_bounds(0.0,    0.0,   0.3125,  1.0,    0.875, 0.6875)],
    ("low", "tall"):  [
                       make_bounds(0.0,    0.0,   0.3125,  0.6875, 1.0,   0.6875), 
                       make_bounds(0.6875, 0.0,   0.3125,  1.0,    0.875, 0.6875),
    ],
    ("tall", "none"): [make_bounds(0.3125,    0.0,   0.3125,  1.0, 1.0,   0.6875)],
    ("tall", "low"):  [
                       make_bounds(0.0,    0.0,   0.3125,  0.3125, 0.875,   0.6875), 
                       make_bounds(0.3125, 0.0,   0.3125,  1.0,    1.0,     0.6875),
    ],
    ("tall", "tall"):   [make_bounds(0.0,    0.0,   0.3125,  1.0,    1.0, 0.6875)],
}

def bounds_swap_x_and_z(bounds: dict[dict[float]]) -> dict[dict[float]]:
    min_x = bounds["min"]["z"]
    min_y = bounds["min"]["y"]
    min_z = bounds["min"]["x"]
    max_x = bounds["max"]["z"]
    max_y = bounds["max"]["y"]
    max_z = bounds["max"]["x"]
    return {
        "min": {"x": min_x, "y": min_y, "z": min_z},
        "max": {"x": max_x, "y": max_y, "z": max_z},
    }

up_bounds = make_bounds(0.25, 0.0, 0.25, 0.75, 1.0, 0.75)

def bounds_to_str(obj: dict[any]) -> str:
    if not isinstance(obj, dict):
        return f'{obj}'
    
    items = [
        f"{k}: {bounds_to_str(v)}"
        for k, v in obj.items()
    ]
    return "{" + ", ".join(items) + "}"

# I'm going to allow certain "impossible" states for creative mode use
def is_state_possible(up: bool, connects: dict[str, str]) -> bool:
    if not up and connects["north"] == "none" and connects["south"] == "none" and connects["west"] == "none" and connects["east"] == "none":
        return False
    return True

def generate_wall(label: str, up: bool, connects: dict[str]) -> str:
    bounds = []

    xs = x_bounds[(connects["east"], connects["west"])]
    ys = [bounds_swap_x_and_z(bound) for bound in x_bounds[(connects["south"], connects["north"])]]
    ups = [up_bounds] if up else []

    bounds.extend(xs)
    bounds.extend(ys)
    bounds.extend(ups)
    
    return f'''\
data modify storage sensha_beams:raycast/table walls.{label} set value \\
    [ \\
        {", \\\n        ".join(bounds_to_str(bound) for bound in bounds)} \\
    ]
'''

for up in [True, False]:
    for connects in (dict(zip(connections, values)) for values in itertools.product(connection_types, repeat=4)):
        if not is_state_possible(up, connects):
            continue
        up_prefix = "up_" if up else ""
        ident = "all_low" if connects == {"north": "low", "south": "low", "east": "low", "west": "low"} \
            else "all_tall" if connects == {"north": "tall", "south": "tall", "east": "tall", "west": "tall"} \
            else "_".join(f"{key}_{value}" for key, value in connects.items() if value != "none")
        connects_prefix = f"{ident}_" if ident else ""
        path = Path(f"data/sb.raycast/function/generate_tables/walls/{up_prefix}{connects_prefix}wall.mcfunction")
        with open(path, "w") as file:
            file.write(generate_wall(f"{up_prefix}{connects_prefix}wall", up, connects))