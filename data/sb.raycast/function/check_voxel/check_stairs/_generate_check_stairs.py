from pathlib import Path

dirs = ["north", "south", "east", "west"]
subdirs = ["northeast", "northwest", "southeast", "southwest"]
subdir_to_dirs = {
    "northeast": ["east", "north"], 
    "northwest": ["north", "west"], 
    "southeast": ["south", "east"], 
    "southwest": ["west", "south"]
}
halves = ["top", "bottom"]
corners = ["outer", "inner"]

def generate_check(shape: str) -> str:
    return f'''\
data modify storage sensha_beams:raycast partial.cuboids_to_check set from storage sensha_beams:raycast/table stairs.{shape}

execute \\
    if function sb.raycast:partial/run \\
    run return run function sb.raycast:check_voxel/store_raycast_result
return 0
'''

for half in halves:
    for dir in dirs:
        path = Path(f"data/sb.raycast/function/check_voxel/check_stairs/{half}_{dir}.mcfunction")
        with open(path, "w") as file:
            file.write(generate_check(f"{half}_{dir}"))
    for subdir in subdirs:
        for corner in corners:
            path = Path(f"data/sb.raycast/function/check_voxel/check_stairs/{half}_{corner}_{subdir}.mcfunction")
            with open(path, "w") as file:
                file.write(generate_check(f"{half}_{corner}_{subdir}"))