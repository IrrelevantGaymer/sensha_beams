# tellraw @a [ \
#     "checking voxel (", \
#     {storage: "sensha_beams:raycast", nbt: "voxel.x"}, \
#     ", ", \
#     {storage: "sensha_beams:raycast", nbt: "voxel.y"}, \
#     ", ", \
#     {storage: "sensha_beams:raycast", nbt: "voxel.z"}, \
#     ")" \
# ]

execute \
    unless block ~ ~ ~ #sb.raycast:passthrough \
    run return run function sb.raycast:check_voxel/store_raycast_result
# setblock ~ ~ ~ minecraft:light[level=15]
return 0