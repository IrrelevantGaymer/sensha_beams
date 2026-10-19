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
    "warped",
]

beam_names = {
    "acacia": "Acacia", 
    "bamboo": "Bamboo", 
    "birch": "Birch", 
    "cherry": "Cherry", 
    "crimson": "Crimson", 
    "dark_oak": "Dark Oak", 
    "jungle": "Jungle", 
    "mangrove": "Mangrove", 
    "oak": "Oak",
    "pale_oak": "Pale Oak", 
    "poplar": "Poplar",
    "spruce": "Spruce", 
    "stripped_bamboo": "Stripped Bamboo", 
    "warped": "Warped",
}

colors = [
    "white",
    "orange",
    "magenta",
    "light_blue",
    "yellow",
    "lime",
    "pink",
    "gray",
    "light_gray",
    "cyan",
    "purple",
    "blue",
    "brown",
    "green",
    "red",
    "black"
]

color_values = {
    "white": 16383998,
    "orange": 16351261,
    "magenta": 13061821,
    "light_blue": 3847130,
    "yellow": 16701501,
    "lime": 8439583,
    "pink": 15961002,
    "gray": 4673362,
    "light_gray": 10329495,
    "cyan": 1481884,
    "purple": 8991416,
    "blue": 3949738,
    "brown": 8606770,
    "green": 6192150,
    "red": 11546150,
    "black": 1908001 
}

def loot_table(beam: str) -> str:
    return f'''\
{{
  "type": "minecraft:command",
  "pools": [
    {{
      "rolls": 1,
      "entries": [
        {{
          "type": "minecraft:item",
          "name": "minecraft:potion",
          "modifier": [
            {{
              "type": "minecraft:set_components",
              "components": {{
                "minecraft:item_name": {{"text": "{beam_names[beam]} Beam", "color": "white"}},
                "minecraft:item_model": "sensha_beams:{beam}/12",
                "!minecraft:potion_contents": {{}},
                "minecraft:consumable": {{
                  "consume_seconds": 3.4028235e38,
                  "animation": "bundle",
                  "has_consume_particles": false
                }},
                "minecraft:use_effects": {{
                  "can_sprint": true,
                  "speed_multiplier": 1
                }},
                "minecraft:piercing_weapon": {{
                  "deals_knockback": false,
                  "dismounts": false
                }},
                "minecraft:attack_range": {{
                  "min_creative_reach": 0.0,
                  "min_reach": 0.0,
                  "max_creative_reach": 0.0,
                  "max_reach": 0.0,
                  "hitbox_margin": 0.0
                }},
                "minecraft:enchantment_glint_override": false,
                "minecraft:enchantments": {{
                  "sb.placing:beam_cancel": 1
                }},
                "minecraft:tooltip_display": {{
                  "hidden_components": ["minecraft:enchantments"]
                }},
                "minecraft:max_stack_size": 64,
                "minecraft:cooking_fuel": {{
                    "burn_time": 12,
                    "speed_multiplier": "minecraft:cooking/speed_default"
                }},
                "minecraft:custom_data": {{
                  "sensha_beam": "{beam}",
                  "is_sensha_beam": true
                }}
              }}
            }}
          ]
        }}
      ]
    }}
  ]
}}
'''

def wool_covered_loot_table(beam: str, color: str) -> str:
    return f'''\
{{
  "type": "minecraft:command",
  "pools": [
    {{
      "rolls": 1,
      "entries": [
        {{
          "type": "minecraft:item",
          "name": "minecraft:potion",
          "modifier": [
            {{
              "type": "minecraft:set_components",
              "components": {{
                "minecraft:item_name": {{"text": "Wool Covered {beam_names[beam]} Beam", "color": "white"}},
                "minecraft:item_model": "sensha_beams:wool_covered/{beam}/12",
                "minecraft:dyed_color": {color_values[color]},
                "!minecraft:potion_contents": {{}},
                "minecraft:consumable": {{
                  "consume_seconds": 3.4028235e38,
                  "animation": "bundle",
                  "has_consume_particles": false
                }},
                "minecraft:use_effects": {{
                  "can_sprint": true,
                  "speed_multiplier": 1
                }},
                "minecraft:piercing_weapon": {{
                  "deals_knockback": false,
                  "dismounts": false
                }},
                "minecraft:attack_range": {{
                  "min_creative_reach": 0.0,
                  "min_reach": 0.0,
                  "max_creative_reach": 0.0,
                  "max_reach": 0.0,
                  "hitbox_margin": 0.0
                }},
                "minecraft:enchantment_glint_override": false,
                "minecraft:enchantments": {{
                  "sb.placing:beam_cancel": 1
                }},
                "minecraft:tooltip_display": {{
                  "hidden_components": ["minecraft:enchantments"]
                }},
                "minecraft:max_stack_size": 64,
                "minecraft:cooking_fuel": {{
                    "burn_time": 12,
                    "speed_multiplier": "minecraft:cooking/speed_default"
                }},
                "minecraft:custom_data": {{
                  "sensha_beam": "wool_covered/{beam}",
                  "is_sensha_beam": true
                }}
              }}
            }}
          ]
        }}
      ]
    }}
  ]
}}
'''

for beam in beams:
    path = Path(f"data/sb.items/loot_table/{beam}_beam.json")
    with open(path, "w") as file:
        file.write(loot_table(beam))
    # Too many files: 16 * 13 files
    # for color in colors:
    #   path = Path(f"data/sb.items/loot_table/wool_covered/{color}_{beam}_beam.json")
    #   with open(path, "w") as file:
    #       file.write(wool_covered_loot_table(beam, color))