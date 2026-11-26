from pathlib import Path

dirs = ["north", "south", "east", "west"]
vert_dirs = ["ceiling", "floor"]
axes = ["x", "z"]
states = ["pressed", "unpressed"]

def generate_check(label: str) -> str:
    return f'''\
data modify storage sensha_beams:raycast partial.cuboids_to_check set from storage sensha_beams:raycast/table buttons.{label}

execute \\
    if function sb.raycast:partial/run \\
    run return run function sb.raycast:check_voxel/store_raycast_result
return 0
'''

for state in states:
    for dir in dirs:
        path = Path(f"data/sb.raycast/function/check_voxel/check_buttons/wall_{dir}_{state}.mcfunction")
        with open(path, "w") as file:
            file.write(generate_check(f"wall_{dir}_{state}"))
    for vert in vert_dirs:
        for axis in axes:
            path = Path(f"data/sb.raycast/function/check_voxel/check_buttons/{vert}_{axis}_{state}.mcfunction")
            with open(path, "w") as file:
                file.write(generate_check(f"{vert}_{axis}_{state}"))
