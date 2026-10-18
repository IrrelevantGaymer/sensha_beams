# execute with anchored eyes summon minecraft:marker

data modify storage sensha_beams:raycast origin.x set from entity @s Pos[0]
data modify storage sensha_beams:raycast origin.y set from entity @s Pos[1]
data modify storage sensha_beams:raycast origin.z set from entity @s Pos[2]

kill @s