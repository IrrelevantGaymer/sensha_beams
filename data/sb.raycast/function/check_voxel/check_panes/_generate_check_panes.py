import itertools
from pathlib import Path

connections = ["north", "south", "east", "west"]

def generate_check(shape: str) -> str:
    return f'''\
data modify storage sensha_beams:raycast partial.cuboids_to_check set from storage sensha_beams:raycast/table panes.{shape}

execute \\
    if function sb.raycast:partial/run \\
    run return run function sb.raycast:check_voxel/store_raycast_result
return 0
'''

for connects in (dict(zip(connections, values)) for values in itertools.product([True, False], repeat=4)):
    ident = "all" \
        if connects == {"north": True, "south": True, "east": True, "west": True} \
        else "_".join(key for key, value in connects.items() if value)
    prefix = f"{ident}_" if ident else ""
    path = Path(f"data/sb.raycast/function/check_voxel/check_panes/{prefix}pane.mcfunction")
    with open(path, "w") as file:
        file.write(generate_check(f"{prefix}pane"))