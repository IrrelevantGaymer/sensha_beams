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

beam_placing_sounds = {
    "acacia": {
        "start": {"name": "minecraft:block.wood.place", "volume": 1.0, "pitch": 1.0},
        "active": {"name": "minecraft:block.wood.place", "volume": 1.0, "pitch": 1.0},
        "end": {"name": "minecraft:entity.villager.work_fletcher", "volume": 0.4, "pitch": 1.0},
    }, 
    "bamboo": {
        "start": {"name": "minecraft:block.wood.place", "volume": 1.0, "pitch": 1.0},
        "active": {"name": "minecraft:block.wood.place", "volume": 1.0, "pitch": 1.0},
        "end": {"name": "minecraft:entity.villager.work_fletcher", "volume": 0.4, "pitch": 1.0},
    }, 
    "birch": {
        "start": {"name": "minecraft:block.wood.place", "volume": 1.0, "pitch": 1.0},
        "active": {"name": "minecraft:block.wood.place", "volume": 1.0, "pitch": 1.0},
        "end": {"name": "minecraft:entity.villager.work_fletcher", "volume": 0.4, "pitch": 1.0},
    }, 
    "cherry": {
        "start": {"name": "minecraft:block.wood.place", "volume": 1.0, "pitch": 1.0},
        "active": {"name": "minecraft:block.wood.place", "volume": 1.0, "pitch": 1.0},
        "end": {"name": "minecraft:entity.villager.work_fletcher", "volume": 0.4, "pitch": 1.0},
    }, 
    "crimson": {
        "start": {"name": "minecraft:block.nether_wood.place", "volume": 1.0, "pitch": 1.0},
        "active": {"name": "minecraft:block.nether_wood.place", "volume": 1.0, "pitch": 1.0},
        "end": {"name": "minecraft:entity.villager.work_fletcher", "volume": 0.4, "pitch": 1.0},
    }, 
    "dark_oak": {
        "start": {"name": "minecraft:block.wood.place", "volume": 1.0, "pitch": 1.0},
        "active": {"name": "minecraft:block.wood.place", "volume": 1.0, "pitch": 1.0},
        "end": {"name": "minecraft:entity.villager.work_fletcher", "volume": 0.4, "pitch": 1.0},
    }, 
    "jungle": {
        "start": {"name": "minecraft:block.wood.place", "volume": 1.0, "pitch": 1.0},
        "active": {"name": "minecraft:block.wood.place", "volume": 1.0, "pitch": 1.0},
        "end": {"name": "minecraft:entity.villager.work_fletcher", "volume": 0.4, "pitch": 1.0},
    }, 
    "mangrove": {
        "start": {"name": "minecraft:block.wood.place", "volume": 1.0, "pitch": 1.0},
        "active": {"name": "minecraft:block.wood.place", "volume": 1.0, "pitch": 1.0},
        "end": {"name": "minecraft:entity.villager.work_fletcher", "volume": 0.4, "pitch": 1.0},
    }, 
    "oak": {
        "start": {"name": "minecraft:block.wood.place", "volume": 1.0, "pitch": 1.0},
        "active": {"name": "minecraft:block.wood.place", "volume": 1.0, "pitch": 1.0},
        "end": {"name": "minecraft:entity.villager.work_fletcher", "volume": 0.4, "pitch": 1.0},
    },
    "pale_oak": {
        "start": {"name": "minecraft:block.wood.place", "volume": 1.0, "pitch": 1.0},
        "active": {"name": "minecraft:block.wood.place", "volume": 1.0, "pitch": 1.0},
        "end": {"name": "minecraft:entity.villager.work_fletcher", "volume": 0.4, "pitch": 1.0},
    }, 
    "poplar": {
        "start": {"name": "minecraft:block.wood.place", "volume": 1.0, "pitch": 1.0},
        "active": {"name": "minecraft:block.wood.place", "volume": 1.0, "pitch": 1.0},
        "end": {"name": "minecraft:entity.villager.work_fletcher", "volume": 0.4, "pitch": 1.0},
    },
    "spruce": {
        "start": {"name": "minecraft:block.wood.place", "volume": 1.0, "pitch": 1.0},
        "active": {"name": "minecraft:block.wood.place", "volume": 1.0, "pitch": 1.0},
        "end": {"name": "minecraft:entity.villager.work_fletcher", "volume": 0.4, "pitch": 1.0},
    }, 
    "stripped_bamboo": {
        "start": {"name": "minecraft:block.wood.place", "volume": 1.0, "pitch": 1.0},
        "active": {"name": "minecraft:block.wood.place", "volume": 1.0, "pitch": 1.0},
        "end": {"name": "minecraft:entity.villager.work_fletcher", "volume": 0.4, "pitch": 1.0},
    }, 
    "warped": {
        "start": {"name": "minecraft:block.nether_wood.place", "volume": 1.0, "pitch": 1.0},
        "active": {"name": "minecraft:block.nether_wood.place", "volume": 1.0, "pitch": 1.0},
        "end": {"name": "minecraft:entity.villager.work_fletcher", "volume": 0.4, "pitch": 1.0},
    },
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
                  "is_sensha_beam": true,
                  "start_place_sound": {{
                    "name": "{beam_placing_sounds[beam]["start"]["name"]}",
                    "volume": {beam_placing_sounds[beam]["start"]["volume"]},
                    "pitch": {beam_placing_sounds[beam]["start"]["pitch"]}
                  }},
                  "active_place_sound": {{
                    "name": "{beam_placing_sounds[beam]["active"]["name"]}",
                    "volume": {beam_placing_sounds[beam]["active"]["volume"]},
                    "pitch": {beam_placing_sounds[beam]["active"]["pitch"]}
                  }},
                  "end_place_sound": {{
                    "name": "{beam_placing_sounds[beam]["end"]["name"]}",
                    "volume": {beam_placing_sounds[beam]["end"]["volume"]},
                    "pitch": {beam_placing_sounds[beam]["end"]["pitch"]}
                  }}
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