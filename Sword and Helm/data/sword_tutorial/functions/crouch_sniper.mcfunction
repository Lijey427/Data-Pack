execute as @a at @s anchored eyes positioned ^ ^-0.1 ^2.3 run function sword_tutorial:prt_line
playsound item.shield.break master @s
clear @s minecraft:stick{bullet:true} 1
scoreboard players set @s sneak 0
scoreboard players set @s sniper.timer 0