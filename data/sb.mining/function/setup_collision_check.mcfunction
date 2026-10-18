tag @s add checked_beam
data \
    modify storage sensha_beams:mining center \
    set from entity @s data.midpoint
data \
    modify storage sensha_beams:mining yaw_r \
    set from entity @s data.yaw_r
data \
    modify storage sensha_beams:mining pitch_r \
    set from entity @s data.pitch_r
data \
    modify storage sensha_beams:mining transform \
    set from entity @s data.transform
data \
    modify storage sensha_beams:mining length \
    set from entity @s data.length