Config = {}

Config.JobName = 'upnatom' --jobcode used in shared/jobs
Config.TargetSize = 2

Config.Duty = vec3(0, 0, 0) -- Clock in out point
Config.DutyR = 0 -- Rotation

Config.Registers1 = vec3(0, 0, 0) -- Cash Register for billing (Utilises pu_billing)
Config.Registers1r = 0 -- Rotation

Config.Registers2 = vec3(0, 0, 0) -- Cash Register for billing (Utilises pu_billing)
Config.Registers2r = 0 -- Rotation

Config.Registers3 = vec3(0, 0, 0) -- Cash Register for billing (Utilises pu_billing)
Config.Registers3r = 0 -- Rotation

Config.Registers4 = vec3(0, 0, 0) -- Cash Register for billing (Utilises pu_billing)
Config.Registers4r = 0 -- Rotation

-- job Blip Stuff
Config.BlipName = "Up N Atom"
Config.BlipCord = {
    x = 0,
    y = 0,
    z = 0,
}