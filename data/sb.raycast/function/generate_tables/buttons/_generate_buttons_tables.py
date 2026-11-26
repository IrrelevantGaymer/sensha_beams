from pathlib import Path

axes = ["x", "z"]
states = ["pressed", "unpressed"]
heights = {
    "pressed": 0.0625,
    "unpressed": 0.125
}

width = {"min": 0.3125, "max": 0.6875}
depth = {"min": 0.375, "max": 0.625}

def bounds_from_add(a, b):
    return {"min": a, "max": a + b}
def bounds_from_sub(a, b):
    return {"min": a - b, "max": a}

dirs = ["north", "south", "east", "west"]
dirs_to_axis = {
    "north": "z",
    "south": "z",
    "east": "x",
    "west": "x",
}
dirs_to_bound = {
    "north": 0.0,
    "south": 1.0,
    "east": 1.0,
    "west": 0.0,
}
dirs_to_op = {
    "north": bounds_from_add,
    "south": bounds_from_sub,
    "east": bounds_from_sub,
    "west": bounds_from_add,
}

vert_dirs = ["ceiling", "floor"]
vert_dirs_to_bound = {
    "ceiling": 1.0,
    "floor": 0.0,
}
vert_dirs_to_op = {
    "ceiling": bounds_from_sub,
    "floor": bounds_from_add,
}

def generate_wall_table(dir: str, state: str) -> str:
    xs = width if dirs_to_axis[dir] == "z" \
                         else dirs_to_op[dir](dirs_to_bound[dir], heights[state])
    zs = width if dirs_to_axis[dir] == "x" \
                         else dirs_to_op[dir](dirs_to_bound[dir], heights[state])
    
    return f'''\
data modify storage sensha_beams:raycast/table buttons.wall_{dir}_{state} set value \\
    [ \\
        {{min: {{x: {xs["min"]}, y: {depth["min"]}, z: {zs["min"]}}}, max: {{x: {xs["max"]}, y: {depth["max"]}, z: {zs["max"]}}}}} \\
    ]
'''

def generate_vert_table(vert: str, axis: str, state: str) -> str:
    xs = depth if axis == "x" \
                         else width
    zs = depth if axis == "z" \
                         else width

    ys = vert_dirs_to_op[vert](vert_dirs_to_bound[vert], heights[state])

    return f'''\
data modify storage sensha_beams:raycast/table buttons.{vert}_{axis}_{state} set value \\
    [ \\
        {{min: {{x: {xs["min"]}, y: {ys["min"]}, z: {zs["min"]}}}, max: {{x: {xs["max"]}, y: {ys["max"]}, z: {zs["max"]}}}}} \\
    ]
'''

for state in states:
    for dir in dirs:
        path = Path(f"data/sb.raycast/function/generate_tables/buttons/wall_{dir}_{state}.mcfunction")
        with open(path, "w") as file:
            file.write(generate_wall_table(dir, state))
    for vert in vert_dirs:
        for axis in axes:
            path = Path(f"data/sb.raycast/function/generate_tables/buttons/{vert}_{axis}_{state}.mcfunction")
            with open(path, "w") as file:
                file.write(generate_vert_table(vert, axis, state))