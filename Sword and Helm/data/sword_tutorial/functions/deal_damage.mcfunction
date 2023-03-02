#built using mc-build (https://github.com/mc-build/mc-build)

tag @s add am_the_attacker
advancement revoke @s only sword_tutorial:deal_damage
execute if predicate sword_tutorial:holding_item/custom_sword as @e[type=#sword_tutorial:mobs,distance=..10,nbt={HurtTime:10s},tag=!am_the_attacker] at @s run function sword_tutorial:swords/sword1
execute if predicate sword_tutorial:holding_item/custom_sword2 as @e[type=#sword_tutorial:mobs,distance=..10,nbt={HurtTime:10s},tag=!am_the_attacker] at @s run function sword_tutorial:swords/sword2
execute if predicate sword_tutorial:holding_item/custom_sword3 as @e[type=#sword_tutorial:mobs,distance=..10,nbt={HurtTime:10s},tag=!am_the_attacker] at @s run function sword_tutorial:swords/sword3
execute if predicate sword_tutorial:holding_item/custom_sword4 as @e[type=#sword_tutorial:mobs,distance=..10,nbt={HurtTime:10s},tag=!am_the_attacker] at @s run function sword_tutorial:swords/sword4
tag @s remove am_the_attacker