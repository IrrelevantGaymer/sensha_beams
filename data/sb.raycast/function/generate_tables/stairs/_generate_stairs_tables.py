from pathlib import Path

dirs = ["north", "south", "east", "west"]
subdirs = ["northeast", "northwest", "southeast", "southwest"]
subdir_to_dirs = {
    "northeast": ["north", "east"], 
    "northwest": ["north", "west"], 
    "southeast": ["south", "east"], 
    "southwest": ["south", "west"],
}
halves = ["top", "bottom"]
corners = ["outer", "inner"]

dir_to_axis = {
    "north": "z",
    "south": "z",
    "east": "x",
    "west": "x",
}

dir_to_coord = {
    "north": {"z": 0.0},
    "south": {"z": 0.5},
    "east": {"x": 0.5},
    "west": {"x": 0.0},
}

dir_to_opposite = {
    "north": "south",
    "south": "north",
    "east": "west",
    "west": "east",
}

half_to_min_y = {
    "top": 0.5,
    "bottom": 0.0,
}

half_to_opposite = {
    "top": "bottom",
    "bottom": "top"
}

def generate_straight(dir: str, half: str) -> str:
    base_cuboid = (
        "{"
            "min: {"
                "x: 0.0, "
                f"y: {half_to_min_y[half]}, "
                "z: 0.0"
            "}, "
            "max: {"
                "x: 1.0, "
                f"y: {half_to_min_y[half] + 0.5}, "
                "z: 1.0"
            "}"
        "}"
    )
    step_min = {"x": 0.0, "z": dir_to_coord[dir]["z"]} if dir_to_axis[dir] == "z" else {"x": dir_to_coord[dir]["x"], "z": 0.0}
    step_max = {"x": 1.0, "z": dir_to_coord[dir]["z"] + 0.5} if dir_to_axis[dir] == "z" else {"x": dir_to_coord[dir]["x"] + 0.5, "z": 1.0}
    step_cuboid = (
        "{"
            "min: {"
                f"x: {step_min["x"]}, "
                f"y: {half_to_min_y[half_to_opposite[half]]}, "
                f"z: {step_min["z"]}"
            "}, "
            "max: {"
                f"x: {step_max["x"]}, "
                f"y: {half_to_min_y[half_to_opposite[half]] + 0.5}, "
                f"z: {step_max["z"]}"
            "}"
        "}"
    )
    return f'''\
data modify storage sensha_beams:raycast/table stairs.{half}_{dir} set value \\
    [ \\
        {base_cuboid}, \\
        {step_cuboid}, \\
    ]
'''

def generate_outer_corner(subdir: str, half: str) -> str:
    base_cuboid = (
        "{"
            "min: {"
                "x: 0.0, "
                f"y: {half_to_min_y[half]}, "
                "z: 0.0"
            "}, "
            "max: {"
                "x: 1.0, "
                f"y: {half_to_min_y[half] + 0.5}, "
                "z: 1.0"
            "}"
        "}"
    )
    x_dir = subdir_to_dirs[subdir][1]
    z_dir = subdir_to_dirs[subdir][0]
    step_cuboid = (
        "{"
            "min: {"
                f"x: {dir_to_coord[x_dir]["x"]}, "
                f"y: {half_to_min_y[half_to_opposite[half]]}, "
                f"z: {dir_to_coord[z_dir]["z"]}"
            "}, "
            "max: {"
                f"x: {dir_to_coord[x_dir]["x"] + 0.5}, "
                f"y: {half_to_min_y[half_to_opposite[half]] + 0.5}, "
                f"z: {dir_to_coord[z_dir]["z"] + 0.5}"
            "}"
        "}"
    )
    return f'''\
data modify storage sensha_beams:raycast/table stairs.{half}_outer_{subdir} set value \\
    [ \\
        {base_cuboid}, \\
        {step_cuboid}, \\
    ]
'''

def generate_inner_corner(subdir: str, half: str) -> str:
    base_cuboid = (
        "{"
            "min: {"
                "x: 0.0, "
                f"y: {half_to_min_y[half]}, "
                "z: 0.0"
            "}, "
            "max: {"
                "x: 1.0, "
                f"y: {half_to_min_y[half] + 0.5}, "
                "z: 1.0"
            "}"
        "}"
    )
    x_dir = subdir_to_dirs[subdir][1]
    z_dir = subdir_to_dirs[subdir][0]
    x_step_cuboid = (
        "{"
            "min: {"
                f"x: {dir_to_coord[x_dir]["x"]}, "
                f"y: {half_to_min_y[half_to_opposite[half]]}, "
                "z: 0.0"
            "}, "
            "max: {"
                f"x: {dir_to_coord[x_dir]["x"] + 0.5}, "
                f"y: {half_to_min_y[half_to_opposite[half]] + 0.5}, "
                "z: 1.0"
            "}"
        "}"
    )
    z_step_cuboid = (
        "{"
            "min: {"
                f"x: {dir_to_coord[dir_to_opposite[x_dir]]["x"]}, "
                f"y: {half_to_min_y[half_to_opposite[half]]}, "
                f"z: {dir_to_coord[z_dir]["z"]}"
            "}, "
            "max: {"
                f"x: {dir_to_coord[dir_to_opposite[x_dir]]["x"] + 0.5}, "
                f"y: {half_to_min_y[half_to_opposite[half]] + 0.5}, "
                f"z: {dir_to_coord[z_dir]["z"] + 0.5}"
            "}"
        "}"
    )
    return f'''\
data modify storage sensha_beams:raycast/table stairs.{half}_inner_{subdir} set value \\
    [ \\
        {base_cuboid}, \\
        {x_step_cuboid}, \\
        {z_step_cuboid}, \\
    ]
'''

for half in halves:
    for dir in dirs:
        path = Path(f"data/sb.raycast/function/generate_tables/stairs/{half}_{dir}.mcfunction")
        with open(path, "w") as file:
            file.write(generate_straight(dir, half))
    for subdir in subdirs:
        path = Path(f"data/sb.raycast/function/generate_tables/stairs/{half}_inner_{subdir}.mcfunction")
        with open(path, "w") as file:
            file.write(generate_inner_corner(subdir, half))
        path = Path(f"data/sb.raycast/function/generate_tables/stairs/{half}_outer_{subdir}.mcfunction")
        with open(path, "w") as file:
            file.write(generate_outer_corner(subdir, half))