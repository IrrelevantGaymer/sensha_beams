$data modify entity @s data.length_to_place set compute default float \
    { \
        "type": "minecraft:sub", \
        "left": $(length_to_place), \
        "right": 1.0 \
    }