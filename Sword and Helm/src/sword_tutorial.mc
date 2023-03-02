#Step 1. Determine when we hit a mob

#Step 2. Determine if a custom sword was held

#Step 3. Determine where who/where the mob we hit is


function load{
    say reloaded
    scoreboard objectives add wasd.timer dummy
}

function give_items{
give @s stone_sword{display:{Name:'{"text":"Custom Sword Name","italic":false}'},CustomModelData:6370003,custom_item:1} 1
give @s stone_sword{display:{Name:'{"text":"Custom Sword 2","italic":false}'},CustomModelData:6370004,custom_item:2} 1
}

function tick{
    execute as @e[type=#sword_tutorial:mobs,tag=hit_by_sword1_target] at @s run block{
        scoreboard players add @s wasd.timer 1
        execute as @s[scores={wasd.timer=200..}] run block{
        summon tnt
        kill @s
        }
        particle firework
    }


}

function deal_damage{
    tag @s add am_the_attacker
    advancement revoke @s only sword_tutorial:deal_damage
    #execute as @s[nbt={SelectedItem:{tag:{custom_item:1}}}] run say hi
    execute if predicate sword_tutorial:holding_item/custom_sword as @e[type=#sword_tutorial:mobs,distance=..10,nbt={HurtTime:10s},tag=!am_the_attacker] at @s run function sword_tutorial:swords/sword1
    execute if predicate sword_tutorial:holding_item/custom_sword2 as @e[type=#sword_tutorial:mobs,distance=..10,nbt={HurtTime:10s},tag=!am_the_attacker] at @s run function sword_tutorial:swords/sword2
    tag @s remove am_the_attacker
}

dir swords{
function sword1{
    particle flame ~ ~1 ~ 0 0 0 0.02 30 force
    playsound entity.firework_rocket.blast_far master @a ~ ~ ~ 1 1
    effect give @s levitation 10 2 true
    tag @s add hit_by_sword1_target

}

function sword2{
particle smoke ~ ~1 ~ 0 0 0 0.02 30 force
}
}



