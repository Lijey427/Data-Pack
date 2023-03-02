execute at @e[type=arrow,nbt={inGround:1b},tag=shoot] run summon bat ~ ~ ~ {Tags:[hook],Silent:1b,NoAI:1b,Invisible:1b}
data modify entity @e[tag=hook,limit=1] Leash set from entity @a[limit=1] {}
kill @e[type=arrow,nbt={inGround:1b},tag=shoot]

execute at @e[tag=hook] run effect give @e[tag=hook] invisibility 199999 255 true

execute at @a as @e[tag=hook,distance=..2] run function #look

execute at @e[type=bat,tag=hook,limit=1] as @e[nbt={SelectedItem:{id:"minecraft:bow",tag:{GrapBow:1b}}}] run execute as @a at @a run execute as @a at @a run tp @a ~ ~ ~ facing entity @e[type=bat,tag=hook,limit=1] feet
execute as @e[type=bat,tag=hook,limit=1] as @e[nbt={SelectedItem:{id:"minecraft:bow",tag:{GrapBow:1b}}}] at @a run tp @a ^ ^2 ^3
execute unless entity @e[nbt={SelectedItem:{id:"minecraft:bow",tag:{GrapBow:1b}}}] run tp @e[type=bat,tag=hook] ~ 0 ~
execute unless entity @e[nbt={SelectedItem:{id:"minecraft:bow",tag:{GrapBow:1b}}}] run kill @e[type=bat,tag=hook]
execute as @e[type=bat,tag=hook,limit=1] as @e[nbt={SelectedItem:{id:"minecraft:bow",tag:{GrapBow:1b}}}] at @a run effect give @a resistance 3 255 true


execute at @e[type=item,nbt={Item:{id:"minecraft:bow",Count:1b},OnGround:1b}] as @e[type=item,nbt={Item:{id:"minecraft:lead",Count:1b},OnGround:1b},distance=..0.4] run function #craft1

scoreboard players operation @a prev_bow_used = @a curr_bow_used
execute if score @a[limit=1] curr_bow_used matches 1.. run function #shoot