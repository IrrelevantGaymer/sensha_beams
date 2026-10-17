# SAFETY: make sure that axis, voxel, step, t_max, and t_delta are initialized

$execute if entity @s[nbt={data:{axis:0}}] run data modify entity @s data.voxel_x set \
    compute default float {type: "minecraft:add", inputs: [$(voxel_x), $(step_x)]}
$execute if entity @s[nbt={data:{axis:1}}] run data modify entity @s data.voxel_y set \
    compute default float {type: "minecraft:add", inputs: [$(voxel_y), $(step_y)]}
$execute if entity @s[nbt={data:{axis:2}}] run data modify entity @s data.voxel_z set \
    compute default float {type: "minecraft:add", inputs: [$(voxel_z), $(step_z)]}

$execute if entity @s[nbt={data:{axis:0}}] run data modify entity @s data.t_max_x set \
    compute default float {type: "minecraft:add", inputs: [$(t_max_x), $(t_delta_x)]}
$execute if entity @s[nbt={data:{axis:1}}] run data modify entity @s data.t_max_y set \
    compute default float {type: "minecraft:add", inputs: [$(t_max_y), $(t_delta_y)]}
$execute if entity @s[nbt={data:{axis:2}}] run data modify entity @s data.t_max_z set \
    compute default float {type: "minecraft:add", inputs: [$(t_max_z), $(t_delta_z)]}