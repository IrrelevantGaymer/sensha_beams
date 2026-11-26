import itertools
from pathlib import Path

connections = ["north", "south", "east", "west"]

def generate_fence(connects: dict[str, bool]) -> str:
    x_gate = ''',
    {
      "type": "minecraft:location_check",
      "predicate": {
        "block": {
          "blocks": "#minecraft:fence_gates",
          "state": {
            "facing": "north"
          }
        }
      }
    },
    {
      "type": "minecraft:location_check",
      "predicate": {
        "block": {
          "blocks": "#minecraft:fence_gates",
          "state": {
            "facing": "south"
          }
        }
      }
    }\
''' if connects["east"] and connects["west"] and not connects["north"] and not connects["south"] else ""
    z_gate = ''',
    {
      "type": "minecraft:location_check",
      "predicate": {
        "block": {
          "blocks": "#minecraft:fence_gates",
          "state": {
            "facing": "east"
          }
        }
      }
    },
    {
      "type": "minecraft:location_check",
      "predicate": {
        "block": {
          "blocks": "#minecraft:fence_gates",
          "state": {
            "facing": "west"
          }
        }
      }
    }\
''' if connects["north"] and connects["south"] and not connects["east"] and not connects["west"] else ""
    
    return f'''\
{{
  "type": "minecraft:any_of",
  "terms": [
    {{
      "type": "minecraft:location_check",
      "predicate": {{
        "block": {{
          "blocks": "#minecraft:fences",
          "state": {{
            "north": "{str(connects["north"]).lower()}",
            "south": "{str(connects["south"]).lower()}",
            "east": "{str(connects["east"]).lower()}",
            "west": "{str(connects["west"]).lower()}"
          }}
        }}
      }}
    }}{x_gate}{z_gate}
  ]
}}
'''

for connects in (dict(zip(connections, values)) for values in itertools.product([True, False], repeat=4)):
    ident = "all" \
        if connects == {"north": True, "south": True, "east": True, "west": True} \
        else "_".join(key for key, value in connects.items() if value)
    prefix = f"{ident}_" if ident else ""
    path = Path(f"data/sb.raycast/predicate/fences/{prefix}fence.json")
    with open(path, "w") as file:
        file.write(generate_fence(connects))