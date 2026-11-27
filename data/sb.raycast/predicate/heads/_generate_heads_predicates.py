from pathlib import Path

dirs = ["north", "south", "east", "west"]

heads = ["normal", "piglin"]
head_floor_ids = {
    "normal": "#sb.raycast:skulls/normal_floor",
    "piglin": "minecraft:piglin_head",
}
head_wall_ids = {
    "normal": "#sb.raycast:skulls/normal_wall",
    "piglin": "minecraft:piglin_wall_head",
}

def generate_floor_predicate(head: str) -> str:
    return f'''\
{{
  "type": "minecraft:location_check",
  "predicate": {{
    "block": {{
      "blocks": "{head_floor_ids[head]}"
    }}
  }}
}}
'''

def generate_wall_predicate(head: str, dir: str) -> str:
    return f'''\
{{
  "type": "minecraft:location_check",
  "predicate": {{
    "block": {{
      "blocks": "{head_wall_ids[head]}",
      "state": {{
        "facing": "{dir}"
      }}
    }}
  }}
}}
'''

for head in heads:
    path = Path(f"data/sb.raycast/predicate/heads/floor_{head}.json")
    with open(path, "w") as file:
        file.write(generate_floor_predicate(head))
    for dir in dirs:
        path = Path(f"data/sb.raycast/predicate/heads/wall_{head}_{dir}.json")
        with open(path, "w") as file:
            file.write(generate_wall_predicate(head, dir))