import itertools
from pathlib import Path

connections = ["north", "south", "east", "west"]

def generate_pane(connects: dict[str, bool]) -> str:
    return f'''\
{{
  "type": "minecraft:location_check",
  "predicate": {{
    "block": {{
      "blocks": "#sb.raycast:panes",
      "state": {{
        "north": "{str(connects["north"]).lower()}",
        "south": "{str(connects["south"]).lower()}",
        "east": "{str(connects["east"]).lower()}",
        "west": "{str(connects["west"]).lower()}"
      }}
    }}
  }}
}}
'''

for connects in (dict(zip(connections, values)) for values in itertools.product([True, False], repeat=4)):
    ident = "all" \
        if connects == {"north": True, "south": True, "east": True, "west": True} \
        else "_".join(key for key, value in connects.items() if value)
    prefix = f"{ident}_" if ident else ""
    path = Path(f"data/sb.raycast/predicate/panes/{prefix}pane.json")
    with open(path, "w") as file:
        file.write(generate_pane(connects))