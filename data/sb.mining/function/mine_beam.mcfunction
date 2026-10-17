$data modify entity @e[ \
        tag=root_sensha_beam, nbt={data:{root_UUID: $(closest_beam_UUID)}}, \
        limit=1, sort=arbitrary \
    ] data.miner_gamemode \
    set from entity @s data.miner_gamemode
$execute \
    as @e[ \
        tag=root_sensha_beam, nbt={data:{root_UUID: $(closest_beam_UUID)}}, \
        limit=1, sort=arbitrary \
    ] \
    run function sb.mining:kill_root