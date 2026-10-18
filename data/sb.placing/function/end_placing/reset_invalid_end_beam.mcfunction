function sb.placing:teleport_to_coord with storage sensha_beams:placing start_pos
rotate @s 0.0 0.0

data remove storage sensha_beams:placing data.end_pos

data modify storage sensha_beams:placing scale set value [None, None, None]
data modify storage sensha_beams:placing scale[0] set compute default float sb.placing:const/scale
data modify storage sensha_beams:placing scale[1] set compute default float sb.placing:const/scale
data modify storage sensha_beams:placing scale[2] set compute default float sb.placing:const/scale
data modify entity @s transformation.scale set from storage sensha_beams:placing scale

data modify entity @s item.id set value "minecraft:red_concrete"


tag @s remove sb.end_placing_beam
tag @a[tag=sb.end_placing_player] add sb.invalid_end
tag @a[tag=sb.end_placing_player] remove sb.end_placing_player

return 1