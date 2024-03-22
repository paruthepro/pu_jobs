Config = {}

Config.JobName = 'pizzathis' --jobcode used in shared/jobs
Config.TargetSize = 2

Config.Duty = vec3(807.5822, -761.7828, 31.2659) -- Clock in out point
Config.DutyR = 99 -- Rotation

Config.Registers1 = vec3(811.5455, -751.3934, 26.7808) -- Cash Register for billing (Utilises pu_billing)
Config.Registers1r = 92 -- Rotation


-- job Blip Stuff
Config.BlipName = "Pizza This!"
Config.BlipCord = {
    x = 812,
    y = -751,
    z = 26,
}