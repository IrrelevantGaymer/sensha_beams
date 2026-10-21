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

ingredient_types = ["log", "wood", "stripped_log", "stripped_wood"]

beam_log_ingredient = {
    "acacia": "acacia_log", 
    "bamboo": "bamboo_block", 
    "birch": "birch_log", 
    "cherry": "cherry_log", 
    "crimson": "crimson_stem", 
    "dark_oak": "dark_oak_log", 
    "jungle": "jungle_log", 
    "mangrove": "mangrove_log", 
    "oak": "oak_log",
    "pale_oak": "pale_oak_log", 
    "poplar": "poplar_log",
    "spruce": "spruce_log", 
    "stripped_bamboo": None, 
    "warped": "warped_stem",
}
beam_wood_ingredient = {
    "acacia": "acacia_wood", 
    "bamboo": None, 
    "birch": "birch_wood", 
    "cherry": "cherry_wood", 
    "crimson": "crimson_hyphae", 
    "dark_oak": "dark_oak_wood", 
    "jungle": "jungle_wood", 
    "mangrove": "mangrove_wood", 
    "oak": "oak_wood",
    "pale_oak": "pale_oak_wood", 
    "poplar": "poplar_wood",
    "spruce": "spruce_wood", 
    "stripped_bamboo": None, 
    "warped": "warped_hyphae",
}
beam_stripped_log_ingredient = {
    "acacia": "stripped_acacia_log", 
    "bamboo": None, 
    "birch": "stripped_birch_log", 
    "cherry": "stripped_cherry_log", 
    "crimson": "stripped_crimson_stem", 
    "dark_oak": "stripped_dark_oak_log", 
    "jungle": "stripped_jungle_log", 
    "mangrove": "stripped_mangrove_log", 
    "oak": "stripped_oak_log",
    "pale_oak": "stripped_pale_oak_log", 
    "poplar": "stripped_poplar_log",
    "spruce": "stripped_spruce_log", 
    "stripped_bamboo": "stripped_bamboo_block", 
    "warped": "stripped_warped_stem",
}
beam_stripped_wood_ingredient = {
    "acacia": "stripped_acacia_wood", 
    "bamboo": None, 
    "birch": "stripped_birch_wood", 
    "cherry": "stripped_cherry_wood", 
    "crimson": "stripped_crimson_hyphae", 
    "dark_oak": "stripped_dark_oak_wood", 
    "jungle": "stripped_jungle_wood", 
    "mangrove": "stripped_mangrove_wood", 
    "oak": "stripped_oak_wood",
    "pale_oak": "stripped_pale_oak_wood", 
    "poplar": "stripped_poplar_wood",
    "spruce": "stripped_spruce_wood", 
    "stripped_bamboo": None, 
    "warped": "stripped_warped_hyphae",
}

wooden_beam_ingredients = {
    "log": beam_log_ingredient,
    "wood": beam_wood_ingredient,
    "stripped_log": beam_stripped_log_ingredient,
    "stripped_wood": beam_stripped_wood_ingredient
}

def skip(beam: str, ingredient_type: str) -> str:
    if beam == "bamboo" and ingredient_type == "stripped_log":
        return True
    if beam == "stripped_bamboo" and ingredient_type == "log":
        return True
    if (beam == "bamboo" or beam == "stripped_bamboo") and (ingredient_type == "wood" or ingredient_type == "stripped_wood"):
        return True
    return False

def stone_cutting_wooden_beam_recipe(beam: str, ingredient_type: str) -> str:
    return f'''\
{{
    "type": "minecraft:stonecutting",
    "ingredient": "{wooden_beam_ingredients[ingredient_type][beam]}",
    "result": {{
        "id": "minecraft:potion",
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
            }}
        }},
        "count": 64
    }}
}}
'''

for beam in beams:
    for ingredient_type in ingredient_types:
        if skip(beam, ingredient_type):
            continue
        path = Path(f"data/sb.items/recipe/{beam}_beam_from_{ingredient_type}.json")
        with open(path, "w") as file:
            file.write(stone_cutting_wooden_beam_recipe(beam, ingredient_type))