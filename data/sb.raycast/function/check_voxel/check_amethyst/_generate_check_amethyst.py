from pathlib import Path

facing = ["up", "down", "north", "south", "east", "west"]

amethyst = ["small", "med", "large", "full"]

def generate_check(amethyst: str, facing: str) -> str:
    return f'''\
data modify storage sensha_beams:raycast partial.cuboids_to_check set from storage sensha_beams:raycast/table amethyst.{amethyst}_{facing}

execute \\
    if function sb.raycast:partial/run \\
    run return run function sb.raycast:check_voxel/store_raycast_result
return 0
'''

for gem in amethyst:
    for face in facing:
        path = Path(f"data/sb.raycast/function/check_voxel/check_amethyst/{gem}_{face}.mcfunction")
        with open(path, "w") as file:
            file.write(generate_check(gem, face))