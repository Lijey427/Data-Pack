particle wax_off ^ ^ ^ 0 0 0 0.01 1 force
scoreboard players set @s[distance=..1] hp_dmg 4
execute if entity @s positioned ^ ^ ^.5 unless block ^ ^ ^.5 air run particle ash ^ ^ ^ 0.1 0.1 0.1 0.01 100 normal
execute if entity @s[distance=..20] positioned ^ ^ ^.5 if block ^ ^ ^.5 air run function sword_tutorial:prt_line
scoreboard players reset @s phone