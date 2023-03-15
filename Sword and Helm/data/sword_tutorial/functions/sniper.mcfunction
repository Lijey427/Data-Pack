execute as @a if score @s sneak matches 1.. if score @s sniper.timer matches 20.. if data entity @s SelectedItem.tag.scope at @s[nbt={Inventory:[{id:"minecraft:stick",Slot:-106b,tag:{bullet:true}}]}] run function sword_tutorial:crouch_sniper
scoreboard players set @s sneak 0
scoreboard players add @a sniper.timer 1
advancement revoke @s only sword_tutorial:spyglass_looking