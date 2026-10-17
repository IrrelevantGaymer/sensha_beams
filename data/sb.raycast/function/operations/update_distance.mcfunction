# SAFETY: make sure t_max is initialized

$data modify entity @s data.distance set compute default float \
    {type: "minecraft:min", inputs: [$(t_max_x), $(t_max_y), $(t_max_z)]}

# tellraw @a ["distance is ", {nbt: "data.distance", entity: "@s"}]