import itertools
from pathlib import Path

connections = ["north", "south", "east", "west"]
connection_types = ["none", "low", "tall"]

# I'm going to allow certain "impossible" states for creative mode use
def is_state_possible(up: bool, connects: dict[str, str]) -> bool:
    if not up and connects["north"] == "none" and connects["south"] == "none" and connects["west"] == "none" and connects["east"] == "none":
        return False
    return True

def generate_wall(up: bool, connects: dict[str, str]) -> str:
    return f'''\
{{
  "type": "minecraft:any_of",
  "terms": [
    {{
      "type": "minecraft:location_check",
      "predicate": {{
        "block": {{
          "blocks": "#minecraft:walls",
          "state": {{
            "up": "{str(up).lower()}",
            "north": "{connects["north"]}",
            "south": "{connects["south"]}",
            "east": "{connects["east"]}",
            "west": "{connects["west"]}"
          }}
        }}
      }}
    }}
  ]
}}
'''

for up in [True, False]:
    for connects in (dict(zip(connections, values)) for values in itertools.product(connection_types, repeat=4)):
        if not is_state_possible(up, connects):
            continue
        up_prefix = "up_" if up else ""
        ident = "all_low" if connects == {"north": "low", "south": "low", "east": "low", "west": "low"} \
            else "all_tall" if connects == {"north": "tall", "south": "tall", "east": "tall", "west": "tall"} \
            else "_".join(f"{key}_{value}" for key, value in connects.items() if value != "none")
        connects_prefix = f"{ident}_" if ident else ""
        path = Path(f"data/sb.raycast/predicate/walls/{up_prefix}{connects_prefix}wall.json")
        with open(path, "w") as file:
            file.write(generate_wall(up, connects))