$data modify entity @s data.nearest_subvoxel_length set compute default integer \
    { \
        "type": "minecraft:from_float", \
        input: { \
            "type": "minecraft:round", \
            input: {"type": "minecraft:mul", inputs: [ \
                $(length_to_place), \
                16.0 \
            ]} \
        } \
    }