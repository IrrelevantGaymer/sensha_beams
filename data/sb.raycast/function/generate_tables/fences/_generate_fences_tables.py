from pathlib import Path

connections = ["north", "south", "east", "west"]
x_connections = ["east", "west"]
z_connections = ["north", "south"]
axes = ["x", "z"]
dirs = ["neg", "pos"]

def generate_no_connect() -> str:
    return '''\
data modify storage sensha_beams:raycast/table fences.fence set value \\
    [ \\
        {min: {x: 0.375, y: 0.0, z: 0.375}, max: {x: 0.625, y: 1.0, z: 0.625}} \\
    ]
'''

def generate_one_connect(label: str, connect: str) -> str:
    bounds = {
        "north": "{min: {x: 0.375, y: 0.0, z: 0.0}, max: {x: 0.625, y: 1.0, z: 0.625}}",
        "south": "{min: {x: 0.375, y: 0.0, z: 0.375}, max: {x: 0.625, y: 1.0, z: 1.0}}",
        "west": "{min: {x: 0.0, y: 0.0, z: 0.375}, max: {x: 0.625, y: 1.0, z: 0.625}}",
        "east": "{min: {x: 0.375, y: 0.0, z: 0.375}, max: {x: 1.0, y: 1.0, z: 0.625}}",
    }

    return f'''\
data modify storage sensha_beams:raycast/table fences.{label} set value \\
    [ \\
        {bounds[connect]} \\
    ]
'''

def generate_two_connects_on_axis(label: str, axis: str) -> str:
    bounds = {
        "x": "{min: {x: 0.0, y: 0.0, z: 0.375}, max: {x: 1.0, y: 1.0, z: 0.625}}",
        "z": "{min: {x: 0.375, y: 0.0, z: 0.0}, max: {x: 0.625, y: 1.0, z: 1.0}}",
    }

    return f'''\
data modify storage sensha_beams:raycast/table fences.{label} set value \\
    [ \\
        {bounds[axis]} \\
    ]
'''

def generate_two_connects_perp(label: str, x_connect: str, z_connect: str) -> str:
    x_bounds = {
        "west": "{min: {x: 0.0, y: 0.0, z: 0.375}, max: {x: 0.625, y: 1.0, z: 0.625}}",
        "east": "{min: {x: 0.375, y: 0.0, z: 0.375}, max: {x: 1.0, y: 1.0, z: 0.625}}",
    }
    z_bounds = {
        "north": "{min: {x: 0.375, y: 0.0, z: 0.0}, max: {x: 0.625, y: 1.0, z: 0.625}}",
        "south": "{min: {x: 0.375, y: 0.0, z: 0.375}, max: {x: 0.625, y: 1.0, z: 1.0}}",
    }
    return f'''\
data modify storage sensha_beams:raycast/table fences.{label} set value \\
    [ \\
        {x_bounds[x_connect]}, \\
        {z_bounds[z_connect]}, \\
    ]
'''

def generate_three_connects(label: str, main_axis: str, off_axis_dir: str) -> str:
    main_bounds = {
        "x": "{min: {x: 0.0, y: 0.0, z: 0.375}, max: {x: 1.0, y: 1.0, z: 0.625}}",
        "z": "{min: {x: 0.375, y: 0.0, z: 0.0}, max: {x: 0.625, y: 1.0, z: 1.0}}",
    }
    dir_offset = {
        "neg": {"min": 0.0, "max": 0.375},
        "pos": {"min": 0.625, "max": 1.0},
    }
    off_bounds = {
        "x": f"{{min: {{x: 0.375, y: 0.0, z: {dir_offset[off_axis_dir]["min"]}}}, max: {{x: 0.625, y: 1.0, z: {dir_offset[off_axis_dir]["max"]}}}}}",
        "z": f"{{min: {{x: {dir_offset[off_axis_dir]["min"]}, y: 0.0, z: 0.375}}, max: {{x: {dir_offset[off_axis_dir]["max"]}, y: 1.0, z: 0.625}}}}",
    }
    return f'''\
data modify storage sensha_beams:raycast/table fences.{label} set value \\
    [ \\
        {main_bounds[main_axis]}, \\
        {off_bounds[main_axis]}, \\
    ]
'''

def generate_all_connect(label: str) -> str:
    return f'''\
data modify storage sensha_beams:raycast/table fences.{label} set value \\
    [ \\
        {{min: {{x: 0.0, y: 0.0, z: 0.375}}, max: {{x: 1.0, y: 1.0, z: 0.625}}}}, \\
        {{min: {{x: 0.375, y: 0.0, z: 0.0}}, max: {{x: 0.625, y: 1.0, z: 1.0}}}}, \\
    ]
'''

path = Path(f"data/sb.raycast/function/generate_tables/fences/fence.mcfunction")
with open(path, "w") as file:
    file.write(generate_no_connect())
path = Path(f"data/sb.raycast/function/generate_tables/fences/all_fence.mcfunction")
with open(path, "w") as file:
    file.write(generate_all_connect("all_fence"))
for connect in connections:
    path = Path(f"data/sb.raycast/function/generate_tables/fences/{connect}_fence.mcfunction")
    with open(path, "w") as file:
        file.write(generate_one_connect(f"{connect}_fence", connect))
for x_connect in x_connections:
    for z_connect in z_connections:
        path = Path(f"data/sb.raycast/function/generate_tables/fences/{z_connect}_{x_connect}_fence.mcfunction")
        with open(path, "w") as file:
            file.write(generate_two_connects_perp(f"{z_connect}_{x_connect}_fence", x_connect, z_connect))
for axis in axes:
    axis_connects = x_connections if axis == "x" else z_connections
    two_prefix = "_".join(axis_connects)
    path = Path(f"data/sb.raycast/function/generate_tables/fences/{two_prefix}_fence.mcfunction")
    with open(path, "w") as file:
        file.write(generate_two_connects_on_axis(f"{two_prefix}_fence", axis))
    for off_axis in dirs:
        off_dir = {
            ("x", "neg"): "north",
            ("x", "pos"): "south",
            ("z", "neg"): "west",
            ("z", "pos"): "east",
        }
        three_prefix = "_".join([off_dir[axis, off_axis], two_prefix]) if axis == "x" else "_".join([two_prefix, off_dir[axis, off_axis]])
        path = Path(f"data/sb.raycast/function/generate_tables/fences/{three_prefix}_fence.mcfunction")
        with open(path, "w") as file:
            file.write(generate_three_connects(f"{three_prefix}_fence", axis, off_axis))
