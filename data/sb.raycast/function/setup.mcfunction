execute \
    anchored eyes positioned ^ ^ ^ \
    summon minecraft:marker \
    run function sb.raycast:operations/get_eyes_position

data modify storage sensha_beams:raycast yaw set from entity @s Rotation[0]
data modify storage sensha_beams:raycast pitch set from entity @s Rotation[1]

# TODO calculate max_distance based off of gamemode and max_reach attribute
data modify storage sensha_beams:raycast max_distance set value 5.0
