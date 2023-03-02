#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players add @s wasd.timer 1
execute as @s[scores={wasd.timer=200..}] run function sword_tutorial:__generated__/block/1
particle firework