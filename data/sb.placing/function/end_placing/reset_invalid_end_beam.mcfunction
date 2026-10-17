data remove entity @s data.end_x
data remove entity @s data.end_y
data remove entity @s data.end_z

data modify entity @s item.id set value "minecraft:red_concrete"
data modify entity @s Pos[0] set from entity @s data.start_pos_x
data modify entity @s Pos[1] set from entity @s data.start_pos_y
data modify entity @s Pos[2] set from entity @s data.start_pos_z
data modify entity @s Rotation[0] set value 0.0
data modify entity @s Rotation[1] set value 0.0
data modify entity @s transformation.scale[0] set compute default float sb.placing:scale
data modify entity @s transformation.scale[1] set compute default float sb.placing:scale
data modify entity @s transformation.scale[2] set compute default float sb.placing:scale

$tag @a[nbt={UUID: $(UUID)}] add sb.invalid_end

return 1