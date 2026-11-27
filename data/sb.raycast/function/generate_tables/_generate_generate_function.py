import itertools
from pathlib import Path

halves = ["top", "bottom"]
dirs = ["north", "south", "east", "west"]
facing = ["up", "down", "north", "south", "east", "west"]
vert_attach = ["ceiling", "floor"]
subdirs = ["northwest", "southwest", "southeast", "northeast"]
corners = ["inner", "outer"]
panels = ["top", "bottom", "north", "south", "east", "west"]
about_y_axes = ["x", "z"]
axes = ["x", "y", "z"]
connection_types = ["none", "low", "tall"]
activation = ["pressed", "unpressed"]
amethyst = ["small", "med", "large", "full"]
heads = ["normal", "piglin"]

# I'm going to allow certain "impossible" states for creative mode use
def is_wall_state_possible(up: bool, connects: dict[str, str]) -> bool:
    if not up and connects["north"] == "none" and connects["south"] == "none" and connects["west"] == "none" and connects["east"] == "none":
        return False
    return True

tables = []

tables.append("#halves")
for half in halves:
    tables.append(f"function sb.raycast:generate_tables/halves/{half}_half")

tables.append("\n#stairs")
for half in halves:
    for dir in dirs:
        tables.append(f"function sb.raycast:generate_tables/stairs/{half}_{dir}")
    for corner in corners:
        for subdir in subdirs:
            tables.append(f"function sb.raycast:generate_tables/stairs/{half}_{corner}_{subdir}")

tables.append("\n#panes")
for connects in (dict(zip(dirs, values)) for values in itertools.product([True, False], repeat=4)):
    ident = "all" \
        if connects == {"north": True, "south": True, "east": True, "west": True} \
        else "_".join(key for key, value in connects.items() if value)
    prefix = f"{ident}_" if ident else ""
    tables.append(f"function sb.raycast:generate_tables/panes/{prefix}pane")

tables.append("\n#chains")
for axis in axes:
    tables.append(f"function sb.raycast:generate_tables/chains/{axis}")

tables.append("\n#rods")
for axis in axes:
    tables.append(f"function sb.raycast:generate_tables/rods/{axis}")

tables.append("\n#panels")
for panel in panels:
    tables.append(f"function sb.raycast:generate_tables/panels/{panel}")

tables.append("\n#carpets")
tables.append("function sb.raycast:generate_tables/carpet")

tables.append("\n#fences")
for connects in (dict(zip(dirs, values)) for values in itertools.product([True, False], repeat=4)):
    ident = "all" \
        if connects == {"north": True, "south": True, "east": True, "west": True} \
        else "_".join(key for key, value in connects.items() if value)
    prefix = f"{ident}_" if ident else ""
    tables.append(f"function sb.raycast:generate_tables/fences/{prefix}fence")

tables.append("\n#anvils")
for axis in about_y_axes:
    tables.append(f"function sb.raycast:generate_tables/anvils/{axis}")

tables.append("\n#signs")
tables.append("function sb.raycast:generate_tables/signs/floor")
for dir in dirs:
    tables.append(f"function sb.raycast:generate_tables/signs/wall_{dir}")

tables.append("\n#hanging_signs")
tables.append("function sb.raycast:generate_tables/hanging_signs/ceiling_other")
for axis in about_y_axes:
    tables.append(f"function sb.raycast:generate_tables/hanging_signs/ceiling_{axis}")
for axis in about_y_axes:
    tables.append(f"function sb.raycast:generate_tables/hanging_signs/wall_{axis}")

tables.append("\n#plates")
for state in activation:
    tables.append(f"function sb.raycast:generate_tables/plates/{state}")

tables.append("\n#buttons")
for state in activation:
    for vert in vert_attach:
        for axis in about_y_axes:
            tables.append(f"function sb.raycast:generate_tables/buttons/{vert}_{axis}_{state}")
    for dir in dirs:
        tables.append(f"function sb.raycast:generate_tables/buttons/wall_{dir}_{state}")

tables.append("\n#heads")
tables.append("function sb.raycast:generate_tables/heads/floor_normal")
for dir in dirs:
    tables.append(f"function sb.raycast:generate_tables/heads/wall_normal_{dir}")
tables.append("function sb.raycast:generate_tables/heads/floor_piglin")
for dir in dirs:
    tables.append(f"function sb.raycast:generate_tables/heads/wall_piglin_{dir}")

tables.append("\n#amethyst")
for gem in amethyst:
    for face in facing:
        tables.append(f"function sb.raycast:generate_tables/amethyst/{gem}_{face}")

tables.append("\n#walls")
for up in [True, False]:
    for connects in (dict(zip(dirs, values)) for values in itertools.product(connection_types, repeat=4)):
        if not is_wall_state_possible(up, connects):
            continue
        up_prefix = "up_" if up else ""
        ident = "all_low" if connects == {"north": "low", "south": "low", "east": "low", "west": "low"} \
            else "all_tall" if connects == {"north": "tall", "south": "tall", "east": "tall", "west": "tall"} \
            else "_".join(f"{key}_{value}" for key, value in connects.items() if value != "none")
        connects_prefix = f"{ident}_" if ident else ""
        tables.append(f"function sb.raycast:generate_tables/walls/{up_prefix}{connects_prefix}wall")

path = Path("data/sb.raycast/function/generate_tables/generate.mcfunction")
with open(path, "w") as file:
    file.write("\n".join(tables))