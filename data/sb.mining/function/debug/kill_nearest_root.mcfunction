data \
    modify entity @e[tag=root_sensha_beam, limit=1, sort=nearest] data.miner_gamemode \
    set from entity @s playerGameType
execute \
    as @e[tag=root_sensha_beam, limit=1, sort=nearest] \
    run function sb.mining:kill_root