from pathlib import Path

beams = [
    "acacia", 
    "bamboo", 
    "birch", 
    "cherry", 
    "crimson", 
    "dark_oak", 
    "jungle", 
    "mangrove", 
    "oak",
    "pale_oak", 
    "poplar",
    "spruce", 
    "stripped_bamboo", 
    "warped"
]

def item(beam: str, length: int) -> str:
    return f'''\
{{
    "model": {{
        "type": "minecraft:model",
        "model": "sensha_beams:{beam}/{length}",
        "tints": [
            {{"type": "custom_model_data", "default": -1}}
        ]
    }}
}}\
'''

def model(beam: str, length: int) -> str:
    return f'''\
{{
    "textures": {{
        "particle": "sensha_beams:item/{beam}_beam",
        "texture": "sensha_beams:item/{beam}_beam"
    }},
    "elements": [
        {{
            "from": [6, 6, {10 - length}],
            "to": [10, 10, 10],
            "faces": {{
                "up": {{"uv": [{16 - length}, 0, 16, 4], "texture": "#texture", "rotation": 90, "tintindex": 0}},
                "down": {{"uv": [{16 - length}, 0, 16, 4], "texture": "#texture", "rotation": 90, "tintindex": 0}},
                "east": {{"uv": [{16 - length}, 0, 16, 4], "texture": "#texture", "tintindex": 0}},
                "west": {{"uv": [{16 - length}, 0, 16, 4], "texture": "#texture", "tintindex": 0}},
                "north": {{"uv": [0, 4, 4, 8], "texture": "#texture", "tintindex": 0}},
                "south": {{"uv": [0, 4, 4, 8], "texture": "#texture", "tintindex": 0}}
            }}
        }}
    ],
    "display": {{
        "ground": {{
            "rotation": [90.0, 0.0, 0.0],
            "translation": [0.0, -4.0, 0.0],
            "scale": [0.333, 0.333, 0.333]
        }},
        "gui": {{
            "rotation": [30.0, 225.0, 0.0],
            "translation": [-2.0, 1.0, 0.0],
            "scale": [0.625, 0.625, 0.625]
        }},
        "fixed": {{
            "rotation": [90.0, 0.0, 0.0],
            "translation": [0.0, -4.0, 0.0]
        }},
        "on_shelf": {{
            "rotation": [90.0, 0.0, 0.0],
            "translation": [0.0, -4.0, 0.0],
            "scale": [1.25, 1.25, 1.25]
        }},
        "firstperson_righthand": {{
            "rotation": [90.0, 0.0, 0.0],
            "translation": [0.0, -4.5, 0.0]
        }},
        "thirdperson_righthand": {{
            "rotation": [90.0, 0.0, 0.0],
            "translation": [0.0, -3.0, 0.0],
            "scale": [1.001, 1.001, 1.001]
        }}
    }}
}}
'''

for beam in beams:
    for length in range(1, 17):
        path = Path(f"assets/sensha_beams/items/{beam}/{length}.json")
        path.parent.mkdir(parents=True, exist_ok=True)
        with open(path, "w") as file:
            file.write(item(beam, length))

        path = Path(f"assets/sensha_beams/models/{beam}/{length}.json")
        path.parent.mkdir(parents=True, exist_ok=True)
        with open(path, "w") as file:
            file.write(model(beam, length))
