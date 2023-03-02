execute at @e[type=item,nbt={Item:{id:"minecraft:bow",Count:1b},OnGround:1b}] as @e[type=item,nbt={Item:{id:"minecraft:lead",Count:1b},OnGround:1b},distance=..0.4] run give @a bow{GrapBow:1b,display:{Name:"[{\"text\":\"Grapple Bow\"}]"}} 1
kill @e[type=item,nbt={Item:{id:"minecraft:bow",Count:1b},OnGround:1b}] 
kill @e[type=item,nbt={Item:{id:"minecraft:lead",Count:1b},OnGround:1b}]