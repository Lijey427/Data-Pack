#built using mc-build (https://github.com/mc-build/mc-build)
execute as @e[type=#sword_tutorial:mobs,tag=hit_by_sword1_target] at @s run function sword_tutorial:__generated__/block/0
execute as @a if score @s phone matches 1.. at @s run function sword_tutorial:phone