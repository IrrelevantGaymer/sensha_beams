from pathlib import Path

dirs = ["north", "south", "east", "west"]
dir_to_axis = {
    "north": "z",
    "south": "z",
    "east": "x",
    "west": "x"
}

heads = ["normal", "piglin"]

head_to_bounds = {
    "normal": {"min": 0.25, "max": 0.75},
    "piglin": {"min": 0.1875, "max": 0.8125}
}
y_bounds = {"min": 0.25, "max": 0.75}
height = 0.5

def bounds_from_add(a, b):
    return {"min": a, "max": a + b}

def bounds_from_sub(a, b):
    return {"min": a - b, "max": a}

dir_to_bound = {
    "north": 1.0,
    "south": 0.0,
    "east": 0.0,
    "west": 1.0
}

dir_to_op = {
    "north": bounds_from_sub,
    "south": bounds_from_add,
    "east": bounds_from_add,
    "west": bounds_from_sub
}

def generate_floor_table(head: str) -> str:
    return f'''\
data modify storage sensha_beams:raycast/table heads.floor_{head} set value \\
    [ \\
        {{min: {{x: {head_to_bounds[head]["min"]}, y: 0.0, z: {head_to_bounds[head]["min"]}}}, max: {{x: {head_to_bounds[head]["max"]}, y: {height}, z: {head_to_bounds[head]["max"]}}}}} \\
    ]
'''

def generate_wall_table(head: str, dir: str) -> str:
    xs = head_to_bounds[head] if dir_to_axis[dir] == "z" else dir_to_op[dir](dir_to_bound[dir], height)
    zs = head_to_bounds[head] if dir_to_axis[dir] == "x" else dir_to_op[dir](dir_to_bound[dir], height)
    
    return f'''\
data modify storage sensha_beams:raycast/table heads.wall_{head}_{dir} set value \\
    [ \\
        {{min: {{x: {xs["min"]}, y: {y_bounds["min"]}, z: {zs["min"]}}}, max: {{x: {xs["max"]}, y: {y_bounds["max"]}, z: {zs["max"]}}}}} \\
    ]
'''

for head in heads:
    path = Path(f"data/sb.raycast/function/generate_tables/heads/floor_{head}.mcfunction")
    with open(path, "w") as file:
        file.write(generate_floor_table(head))
    for dir in dirs:
        path = Path(f"data/sb.raycast/function/generate_tables/heads/wall_{head}_{dir}.mcfunction")
        with open(path, "w") as file:
            file.write(generate_wall_table(head, dir))