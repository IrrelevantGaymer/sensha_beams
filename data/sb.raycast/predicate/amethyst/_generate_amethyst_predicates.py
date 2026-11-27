from pathlib import Path

facing = ["up", "down", "north", "south", "east", "west"]

amethyst = ["small", "med", "large", "full"]
amethyst_ids = {
    "small": "small_amethyst_bud", 
    "med": "medium_amethyst_bud", 
    "large": "large_amethyst_bud", 
    "full": "amethyst_cluster"
}

def generate_predicate(amethyst: str, facing: str) -> str:
    return f'''\
{{
  "type": "minecraft:location_check",
  "predicate": {{
    "block": {{
      "blocks": "minecraft:{amethyst_ids[amethyst]}",
      "state": {{
        "facing": "{facing}"
      }}
    }}
  }}
}}
'''

for amethyst in amethyst:
    for face in facing:
        path = Path(f"data/sb.raycast/predicate/amethyst/{amethyst}_{face}.json")
        with open(path, "w") as file:
            file.write(generate_predicate(amethyst, face))