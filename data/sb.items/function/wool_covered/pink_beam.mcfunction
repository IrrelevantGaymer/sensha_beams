# requires beam: str and name: str macro arguments

$loot give @s loot { \
  "type": "minecraft:command", \
  "pools": [ \
    { \
      "rolls": 1, \
      "entries": [ \
        { \
          "type": "minecraft:item", \
          "name": "minecraft:potion", \
          "modifier": [ \
            { \
              "type": "minecraft:set_components", \
              "components": { \
                "minecraft:item_name": {"text": "Wool Covered $(name) Beam", "color": "white"}, \
                "minecraft:item_model": "sensha_beams:wool_covered/$(beam)/12", \
                "minecraft:dyed_color": 15961002, \
                "!minecraft:potion_contents": {}, \
                "minecraft:consumable": { \
                  "consume_seconds": 3.4028235e38, \
                  "animation": "bundle", \
                  "has_consume_particles": false \
                }, \
                "minecraft:use_effects": { \
                  "can_sprint": true, \
                  "speed_multiplier": 1 \
                }, \
                "minecraft:piercing_weapon": { \
                  "deals_knockback": false, \
                  "dismounts": false \
                }, \
                "minecraft:attack_range": { \
                  "min_creative_reach": 0.0, \
                  "min_reach": 0.0, \
                  "max_creative_reach": 0.0, \
                  "max_reach": 0.0, \
                  "hitbox_margin": 0.0 \
                }, \
                "minecraft:enchantment_glint_override": false, \
                "minecraft:enchantments": { \
                  "sb.placing:beam_cancel": 1 \
                }, \
                "minecraft:tooltip_display": { \
                  "hidden_components": ["minecraft:enchantments"] \
                }, \
                "minecraft:max_stack_size": 64, \
                "minecraft:cooking_fuel": { \
                    "burn_time": 12, \
                    "speed_multiplier": "minecraft:cooking/speed_default" \
                }, \
                "minecraft:custom_data": { \
                  "sensha_beam": "wool_covered/$(beam)", \
                  "is_sensha_beam": true \
                } \
              } \
            } \
          ] \
        } \
      ] \
    } \ 
  ] \
}
