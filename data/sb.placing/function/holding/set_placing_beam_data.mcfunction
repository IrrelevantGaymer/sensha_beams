tag @s add placing_sensha_beam

data modify entity @s data.Owner set from storage sensha_beams:placing Owner
data modify entity @s data.sensha_beam set from storage sensha_beams:placing sensha_beam
data remove entity @s data.dyed_color
execute \
    if data storage sensha_beams:placing dyed_color \
    run data modify \
        entity @s data.dyed_color \
        set from storage sensha_beams:placing dyed_color
data modify entity @s data.count set from storage sensha_beams:placing count
data modify entity @s data.rand_delta set from storage sensha_beams:placing rand_delta

tag @s remove sb.update