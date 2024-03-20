Config = {}

Config.JobName = 'burgershot' --jobcode used in shared/jobs
Config.TargetSize = 2

Config.Duty = vec3(0, 0, 0) -- Clock in out point
Config.Registers1 = vec3(0, 0, 0) -- Cash Register for billing (Utilises pu_billing)
Config.Registers2 = vec3(0, 0, 0) -- Cash Register for billing (Utilises pu_billing)
Config.Registers3 = vec3(0, 0, 0) -- Cash Register for billing (Utilises pu_billing)
Config.Registers4 = vec3(0, 0, 0) -- Cash Register for billing (Utilises pu_billing)

-- job Blip Stuff
Config.BlipName = "Weed Store"
Config.BlipCord = {
    x = 0,
    y = 0,
    z = 0,
}