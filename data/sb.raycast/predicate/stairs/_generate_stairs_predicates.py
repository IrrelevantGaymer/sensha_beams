from pathlib import Path

dirs = ["north", "south", "east", "west"]
subdirs = ["northeast", "northwest", "southeast", "southwest"]
subdir_to_dirs = {
    "northeast": ["east", "north"], 
    "northwest": ["north", "west"], 
    "southeast": ["south", "east"], 
    "southwest": ["west", "south"]
}
halves = ["top", "bottom"]
corners = ["outer", "inner"]

def generate_straight(dir: str, half: str) -> str:
    return f'''\
{{
  "type": "minecraft:any_of",
  "terms": [
  {{
    "type": "minecraft:location_check",
      "predicate": {{
        "block": {{
          "blocks": "#minecraft:stairs",
          "state": {{
            "facing": "{dir}",
            "half": "{half}",
            "shape": "straight"
          }}
        }}
      }}
    }}
  ]
}}
'''

def generate_corner(subdir: str, half: str, corner: str) -> str:
    return f'''\
{{
  "type": "minecraft:any_of",
  "terms": [
    {{
      "type": "minecraft:location_check",
        "predicate": {{
        "block": {{
            "blocks": "#minecraft:stairs",
            "state": {{
            "facing": "{subdir_to_dirs[subdir][0]}",
            "half": "{half}",
            "shape": "{corner}_left"
          }}
        }}
      }}
    }},
    {{
      "type": "minecraft:location_check",
      "predicate": {{
        "block": {{
          "blocks": "#minecraft:stairs",
          "state": {{
            "facing": "{subdir_to_dirs[subdir][1]}",
            "half": "{half}",
            "shape": "{corner}_right"
          }}
        }}
      }}
    }}
  ]
}}
'''

for half in halves:
    for dir in dirs:
        path = Path(f"data/sb.raycast/predicate/stairs/{half}_{dir}.json")
        with open(path, "w") as file:
            file.write(generate_straight(dir, half))
    for subdir in subdirs:
        for corner in corners:
            path = Path(f"data/sb.raycast/predicate/stairs/{half}_{corner}_{subdir}.json")
            with open(path, "w") as file:
                file.write(generate_corner(subdir, half, corner))