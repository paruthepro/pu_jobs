Config = {}
-- Tuner shop
Config.Billing1 = vec3(0,0,0) -- Target location
Config.Billing1r = 0

-- Bennys
Config.Billing2 = vec3(0,0,0) -- Target location
Config.Billing2r = 0 -- Rotation

-- Tuner shop
Config.Duty1 = vec3(0,0,0) -- Target location
Config.Duty1r = 0 -- Rotation

-- Bennys
Config.Duty2 = vec3(0,0,0) -- Target location
Config.Duty2r = 0 -- Rotation

Config.TunerJobs = {['mechanic'] = 0, ['tunershop'] = 0} -- The job names to use for the targets (Only those jobs can see/use the targets)
Config.JobInstall = false -- MUST MODIFY JOBS ON LINE 25 IN CLIENT/MAIN.LUA TO MATCH YOUR JOB NAMES
Config.UseQbLock = true -- Pointless check

Config.BackEngineVehicles = {
    [`ninef`] = true,
    [`adder`] = true,
    [`vagner`] = true,
    [`t20`] = true,
    [`infernus`] = true,
    [`zentorno`] = true,
    [`reaper`] = true,
    [`comet2`] = true,
    [`jester`] = true,
    [`jester2`] = true,
    [`cheetah`] = true,
    [`cheetah2`] = true,
    [`prototipo`] = true,
    [`turismor`] = true,
    [`pfister811`] = true,
    [`ardent`] = true,
    [`nero`] = true,
    [`nero2`] = true,
    [`tempesta`] = true,
    [`vacca`] = true,
    [`bullet`] = true,
    [`osiris`] = true,
    [`entityxf`] = true,
    [`turismo2`] = true,
    [`fmj`] = true,
    [`re7b`] = true,
    [`tyrus`] = true,
    [`italigtb`] = true,
    [`penetrator`] = true,
    [`monroe`] = true,
    [`ninef2`] = true,
    [`stingergt`] = true,
    [`surfer`] = true,
    [`surfer2`] = true,
    [`comet3`] = true,
    [`comet4`] = true,
    [`comet5`] = true,
    [`18performante`] = true,
}