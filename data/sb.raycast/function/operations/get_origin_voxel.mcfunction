$data modify entity @s data.voxel_x set compute default float \
    {type: "minecraft:floor", input: $(origin_x)}
$data modify entity @s data.voxel_y set compute default float \
    {type: "minecraft:floor", input: $(origin_y)}
$data modify entity @s data.voxel_z set compute default float \
    {type: "minecraft:floor", input: $(origin_z)}