import itertools
from pathlib import Path

halves = ["top", "bottom"]
dirs = ["north", "south", "east", "west"]
vert_attach = ["ceiling", "floor"]
subdirs = ["northwest", "southwest", "southeast", "northeast"]
corners = ["inner", "outer"]
panels = ["top", "bottom", "north", "south", "east", "west"]
about_y_axes = ["x", "z"]
axes = ["x", "y", "z"]
connection_types = ["none", "low", "tall"]
activation = ["pressed", "unpressed"]

# I'm going to allow certain "impossible" states for creative mode use
def is_state_possible(up: bool, connects: dict[str, str]) -> bool:
    if not up and connects["north"] == "none" and connects["south"] == "none" and connects["west"] == "none" and connects["east"] == "none":
        return False
    return True

def check_command(pred: str, check: str) -> str:
    return f"execute positioned ~ ~ ~ if predicate sb.raycast:{pred} run return run function sb.raycast:check_voxel/{check}"

commands = []

commands.append("execute positioned ~ ~ ~ if block ~ ~ ~ #sb.raycast:passthrough run return 0")
commands.append("execute positioned ~ ~ ~ if predicate sb.raycast:is_full_block run return run function sb.raycast:check_voxel/check_full")

commands.append("\n#halves")
for half in halves:
    commands.append(check_command("halves/bottom_half", "check_halves/bottom_half"))

commands.append("\n#stairs")
for half in halves:
    for dir in dirs:
        shape = f"{half}_{dir}"
        commands.append(check_command(f"stairs/{shape}", f"check_stairs/{shape}"))
    for corner in corners:
        for subdir in subdirs:
            shape = f"{half}_{corner}_{subdir}"
            commands.append(check_command(f"stairs/{shape}", f"check_stairs/{shape}"))

commands.append("\n#panes")
for connects in (dict(zip(dirs, values)) for values in itertools.product([True, False], repeat=4)):
    ident = "all" \
        if connects == {"north": True, "south": True, "east": True, "west": True} \
        else "_".join(key for key, value in connects.items() if value)
    prefix = f"{ident}_" if ident else ""
    shape = f"{prefix}pane"
    commands.append(check_command(f"panes/{shape}", f"check_panes/{shape}"))

commands.append("\n#chains")
for axis in axes:
    commands.append(check_command(f"chains/{axis}", f"check_chains/{axis}"))

commands.append("\n#rods")
for axis in axes:
    commands.append(check_command(f"rods/{axis}", f"check_rods/{axis}"))

commands.append("\n#panels")
for panel in panels:
    commands.append(check_command(f"panels/{panel}", f"check_panels/{panel}"))

commands.append("\n#carpets")
commands.append("execute positioned ~ ~ ~ if block ~ ~ ~ #sb.raycast:carpets run return run function sb.raycast:check_voxel/check_carpets")

commands.append("\n#fences")
for connects in (dict(zip(dirs, values)) for values in itertools.product([True, False], repeat=4)):
    ident = "all" \
        if connects == {"north": True, "south": True, "east": True, "west": True} \
        else "_".join(key for key, value in connects.items() if value)
    prefix = f"{ident}_" if ident else ""
    shape = f"{prefix}fence"
    commands.append(check_command(f"fences/{shape}", f"check_fences/{shape}"))

commands.append("\n#anvils")
for axis in about_y_axes:
    commands.append(check_command(f"anvils/{axis}", f"check_anvils/{axis}"))

commands.append("\n#signs")
commands.append(check_command("signs/floor", "check_signs/floor"))
for dir in dirs:
    commands.append(check_command(f"signs/wall_{dir}", f"check_signs/wall_{dir}"))

commands.append("\n#hanging_signs")
commands.append(check_command("hanging_signs/ceiling_other", "check_hanging_signs/ceiling_other"))
for axis in about_y_axes:
    commands.append(check_command(f"hanging_signs/ceiling_{axis}", f"check_hanging_signs/ceiling_{axis}"))
for axis in about_y_axes:
    commands.append(check_command(f"hanging_signs/wall_{axis}", f"check_hanging_signs/wall_{axis}"))

commands.append("\n#plates")
for state in activation:
    commands.append(check_command(f"plates/{state}", f"check_plates/{state}"))

commands.append("\n#buttons")
for state in activation:
    for vert in vert_attach:
        for axis in about_y_axes:
            commands.append(check_command(f"buttons/{vert}_{axis}_{state}", f"check_buttons/{vert}_{axis}_{state}"))
    for dir in dirs:
        commands.append(check_command(f"buttons/wall_{dir}_{state}", f"check_buttons/wall_{dir}_{state}"))

commands.append("\n#walls")
for up in [True, False]:
    for connects in (dict(zip(dirs, values)) for values in itertools.product(connection_types, repeat=4)):
        if not is_state_possible(up, connects):
            continue
        up_prefix = "up_" if up else ""
        ident = "all_low" if connects == {"north": "low", "south": "low", "east": "low", "west": "low"} \
            else "all_tall" if connects == {"north": "tall", "south": "tall", "east": "tall", "west": "tall"} \
            else "_".join(f"{key}_{value}" for key, value in connects.items() if value != "none")
        connects_prefix = f"{ident}_" if ident else ""
        shape = f"{up_prefix}{connects_prefix}wall"
        commands.append(check_command(f"walls/{shape}", f"check_walls/{shape}"))

commands.append("\nreturn 0")

path = Path("data/sb.raycast/function/check_voxel/init.mcfunction")
with open(path, "w") as file:
    file.write("\n".join(commands))