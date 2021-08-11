-- Minlevel and multiplier are MANDATORY
-- Maxlevel is OPTIONAL, but is considered infinite by default
-- Create a stage with minlevel 1 and no maxlevel to disable stages
experienceStages = {
	{
		minlevel = 1,
		maxlevel = 100,
		multiplier = 50
	}, {
		minlevel = 101,
		maxlevel = 200,
		multiplier = 40
	}, {
		minlevel = 201,
		maxlevel = 300,
		multiplier = 30
	}, {
		minlevel = 301,
		maxlevel = 400,
		multiplier = 20
	}, {
		minlevel = 401,
		multiplier = 10
	}
}

skillsStages = {
	{
		minlevel = 0,
		multiplier = 10
	}
}

magicLevelStages = {
	{
		minlevel = 0,
		multiplier = 10
	}
}
