data remove entity @s item
data modify entity @s transformation.scale set value [1.0f, 1.0f, 1.0f]
data remove entity @s brightness

tp @s ~ ~ ~

tag @s remove sb.start_placing_beam

return 0