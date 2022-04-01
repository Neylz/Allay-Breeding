#loop every 60t


#region allay check hands
execute as @e[type=minecraft:allay,tag=abr_breeder,nbt=!{HandItems:[{id:"minecraft:glow_berries",Count:1b},{}]}] run tag @s remove abr_breeder
execute as @e[type=minecraft:allay,tag=!abr_breeder,nbt={HandItems:[{id:"minecraft:glow_berries",Count:1b},{}]}] run tag @s add abr_breeder
#endregion




#region detect breeding situation 
## detect 2 allays (in a range of 10)
execute as @e[type=minecraft:allay,tag=abr_breeder] at @s if entity @e[type=minecraft:allay,tag=abr_breeder,distance=0.01..10] run tag @s add abr_breederInRange
execute as @e[type=allay,tag=abr_breederInRange,limit=1] run tag @s add abr_breederInRangeSelected
execute as @e[type=minecraft:allay,tag=abr_breederInRangeSelected] at @s run tag @e[type=minecraft:allay,tag=abr_breederInRange,distance=0.01..10,limit=1] add abr_breederInRangeSelected

## mark them as a couple
execute as @e[type=minecraft:allay,tag=abr_breederInRangeSelected,limit=1] at @s run function allaybreeding:process/newcouple





#endregion




schedule function allaybreeding:loop 60t