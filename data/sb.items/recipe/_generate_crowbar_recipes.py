from pathlib import Path

pattern_types = [ "normal", "reflected" ]

patterns = {
    "normal": '''["O  ", " / ", " O "]''',
    "reflected": '''["  O", " / ", " O "]'''
}

pattern_suffix = {
    "normal": "",
    "reflected": "_reflected"
}

materials = [
    "copper_ingot"
]

material_names = {
    "copper_ingot": "Copper"
}

material_types = {
    "copper_ingot": "copper"
}

material_durabilities = {
    "copper_ingot": 190
}

def crowbar_recipe(material: str, pattern_type: str) -> str:
    return f'''\
{{
    "type": "minecraft:crafting_shaped",
    "category": "equipment",
    "group": "{material_types[material]}_crowbar",
    "key": {{
        "/": "minecraft:stick",
        "O": "minecraft:{material}"
    }},
    "pattern": {patterns[pattern_type]},
    "result": {{
        "id": "minecraft:{material_types[material]}_pickaxe",
        "components": {{
            "minecraft:item_name": {{"text": "{material_names[material]} Crowbar", "color": "white"}},
            "minecraft:item_model": "sensha_tools:{material_types[material]}_crowbar",
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
                "sb.mining:mine_beam": 1
            }},
            "minecraft:tooltip_display": {{
                "hidden_components": ["minecraft:enchantments"]
            }},
            "minecraft:max_stack_size": 1,
            "minecraft:max_damage": {material_durabilities[material]},
            "minecraft:damage": 0,
            "minecraft:custom_data": {{
                "is_sensha_crowbar": true
            }}
        }}
    }}
}}
'''

for material in materials:
    for pattern_type in pattern_types:
        path = Path(f"data/sb.items/recipe/{material_types[material]}_crowbar{pattern_suffix[pattern_type]}.json")
        with open(path, "w") as file:
            file.write(crowbar_recipe(material, pattern_type))