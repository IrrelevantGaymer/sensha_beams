$data modify entity @s data.fixed_scale set compute default float \
    { \
        "type": "minecraft:div", \
        "left": {"type": "minecraft:mul", inputs: [$(length_to_place), 16.0]}, \
        "right": {"type": "from_int", input: $(nearest_subvoxel_length)} \
    }