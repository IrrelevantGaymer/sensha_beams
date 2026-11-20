import itertools
from pathlib import Path

halves = ["top", "bottom"]
dirs = ["north", "south", "east", "west"]
subdirs = ["northwest", "southwest", "southeast", "northeast"]
corners = ["inner", "outer"]

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

path = Path("data/sb.raycast/function/generate_tables/generate.mcfunction")
with open(path, "w") as file:
    file.write("\n".join(tables))