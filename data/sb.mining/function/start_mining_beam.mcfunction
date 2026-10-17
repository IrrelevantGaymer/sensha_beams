$data \
    modify entity @e[ \
        type=minecraft:marker, tag=sensha_crowbar, nbt={data:{UUID: $(UUID)}}, \
        limit=1, sort=arbitrary \
    ] data.miner_gamemode \
    set from entity @s playerGameType
$execute \
    as @e[type=minecraft:marker, tag=sensha_crowbar, nbt={data:{UUID: $(UUID)}}] \
    run function sb.mining:mine_beam with entity @s data