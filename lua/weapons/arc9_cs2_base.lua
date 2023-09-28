SWEP.Base = "arc9_base"
SWEP.Spawnable = false
SWEP.Category = "ARC9 - CS2"
SWEP.AdminOnly = false

SWEP.PrintName = "CS2 Base"

-------------------------- MELEE

SWEP.MeleeHitSound = "CS2.Melee.HitBody"
SWEP.MeleeHitWallSound = "CS2.Melee.HitWall"
SWEP.MeleeSwingSound = "CS2.Shield.Swing"
SWEP.BackstabSound = "CS2.Melee.HitBody"

SWEP.BashWhileSprint = true
SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.DefaultBodygroups = "0000000000"

SWEP.AlwaysPhysBullet = false
SWEP.NeverPhysBullet = true
SWEP.TracerEffect = "cod2019_tracer"

SWEP.BashDamage = 45
SWEP.BashLungeRange = 0
SWEP.BashRange = 64
SWEP.PreBashTime = 0.1
SWEP.PostBashTime = 0.65

SWEP.Bash2Damage = 45
SWEP.Bash2LungeRange = 0
SWEP.Bash2Range = 64
SWEP.PreBash2Time = 0.1
SWEP.PostBash2Time = 0.65

SWEP.SpeedMultMelee = 1
SWEP.SpeedMultSights = 0.65
SWEP.SpeedMultReload = 0.75

-- This is for recoil that goes directly to camera, makes gun shoot where sights at but center of screen will be in different place. Like escape from shitlord
SWEP.ViewRecoil = false -- true
SWEP.ViewRecoilUpMult = -5 -- 40-100
SWEP.ViewRecoilUpMultSights = 10

SWEP.PhysicalVisualRecoil = true

-- Extras

SWEP.SprintVerticalOffset = false
SWEP.CanBlindFire = false

SWEP.RicochetChance = 0.03

SWEP.SwayMultSights = 0

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.FiremodeSound = "weapons/cs2/auto_semiauto_switch.ogg"

SWEP.AimDownSightsTimeMultShooting = 1.5

SWEP.ShotgunReloadIncludesChamber = false

if CLIENT then
	killicon.Add("arc9_gsr_proj_40mm_he", "vgui/killicons/arc9_gsr_proj_40mm_he", Color(255, 255, 255, 191))
end

SWEP.RecoilMax = 1