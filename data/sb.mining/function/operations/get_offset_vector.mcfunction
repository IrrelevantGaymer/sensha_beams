$data modify entity @s data.offset_x set compute default float \
    {type: "minecraft:sub", left: $(origin_x), right: $(beam_center_x)}
$data modify entity @s data.offset_y set compute default float \
    {type: "minecraft:sub", left: $(origin_y), right: $(beam_center_y)}
$data modify entity @s data.offset_z set compute default float \
    {type: "minecraft:sub", left: $(origin_z), right: $(beam_center_z)}

# tellraw @a ["offset (", {nbt: "data.offset_x", entity: "@s"}, ", ", {nbt: "data.offset_y", entity: "@s"}, ", ", {nbt: "data.offset_z", entity: "@s"}, ")"]