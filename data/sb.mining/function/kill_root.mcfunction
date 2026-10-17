function sb.mining:kill_children_of_root with entity @s data

execute \
    if data entity @s {data:{miner_gamemode: 0}} \
    run function sb.mining:drop_loot_root with entity @s data
kill @s
