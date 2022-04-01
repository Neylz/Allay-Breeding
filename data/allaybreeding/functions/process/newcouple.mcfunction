#executed as one allay of the couple


#create bees and make the allay ride them
summon bee ~ ~ ~ {CannotEnterHiveTicks:10000,LoveCause:[I;0,0,0,0],InLove:1200,Age:0,Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:false}],Tags:["abr_bee1","abr_process"],Passengers:[{id:"minecraft:allay",Tags:["abr_breeder","abr_breederOnBee1"]}]}

tag @s add abr_processAllay1
execute as @e[type=minecraft:allay,tag=abr_breederInRangeSelected,tag=!abr_processAllay1] at @s run summon bee ~ ~ ~ {CannotEnterHiveTicks:10000, LoveCause:[I;0,0,0,0],InLove:1200,Age:0,Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:false}],Tags:["abr_bee2","abr_process"],Passengers:[{id:"minecraft:allay",Tags:["abr_breeder","abr_breederOnBee2"]}]}

execute as @e[type=bee,tag=abr_bee1,tag=abr_process] run data modify entity @s LoveCause set from entity @e[type=bee,tag=abr_bee2,tag=abr_process,limit=1] UUID
execute as @e[type=bee,tag=abr_bee2,tag=abr_process] run data modify entity @s LoveCause set from entity @e[type=bee,tag=abr_bee1,tag=abr_process,limit=1] UUID


execute as @e[type=bee,tag=abr_process] run scoreboard players set @s abr_onBees 0





tag @e[type=bee,tag=abr_process] remove abr_process

#kill originals
execute as @e[type=minecraft:allay,tag=abr_breederInRangeSelected,tag=!abr_processAllay1] run tp ~ -1000 ~
execute as @e[type=minecraft:allay,tag=abr_breederInRangeSelected,tag=!abr_processAllay1] run kill @s
tp @s ~ -1000 ~
kill @s