execute as @e[type=#sword_tutorial:mobs,tag=hit_by_sword1_target] at @s run function sword_tutorial:__generated__/block/0
execute as @a if score @s phone matches 1.. if data entity @s SelectedItem.tag.phone at @s run function sword_tutorial:phone
execute as @a if score @s scope matches 1.. at @s run function sword_tutorial:rst_scope
execute as @a if score @s phone matches 1.. if data entity @s SelectedItem.tag.auto at @s[nbt={Inventory:[{id:"minecraft:stick",Slot:-106b,tag:{bullet:true}}]}] run function sword_tutorial:auto
execute as @e[type=minecraft:snowball,nbt={Item:{tag:{boom:true}}}] at @s unless blocks ^ ^-1 ^1 ^ ^-1 ^-1 ^ ^ ^ all run function sword_tutorial:gnade