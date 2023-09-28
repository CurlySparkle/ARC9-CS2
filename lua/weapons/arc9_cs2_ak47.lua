AddCSLuaFile()

SWEP.Base = "arc9_cs2_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - CS2"
SWEP.SubCategory = "Assault Rifles"

SWEP.PrintName = "AK-47"

SWEP.Class = "Assault Rifle"

SWEP.Trivia = {
    ["Country of Origin"] = "Russia",
    ["Caliber"] = "7.62x39mm",
    ["Weight (Loaded)"] = "4.79 kg",
    ["Projectile Weight"] = "121.9 gr",
    ["Muzzle Velocity"] = "2,350 ft/s",
    ["Muzzle Energy"] = "2,027 joules"
}

SWEP.Credits = {
     Author = "Twilight Sparkle/Viper/Mushroom",
     Assets = "Valve"
}

SWEP.Description = [[Very reliable automatic assault rifle chambered in 7.62mm Soviet. Large caliber ammunition requires skill to control recoil.]]

SWEP.ViewModel = "models/weapons/cs2/c_rif_ak47.mdl"
SWEP.WorldModel = "models/weapons/w_rif_ak47.mdl"
SWEP.DefaultBodygroups = "000000000"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cs2/c_rif_ak47.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-9, 5.5, -5.5),
    Ang = Angle(-7, 0, 180),
    Scale = 1,
    TPIKPos = Vector(-10, 7, 0),
    TPIKAng = Angle(0, 0, 175)
}


-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 36 -- Damage done at point blank range
SWEP.DamageMin = 20 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 1000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 4000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 25 -- Units of wood that can be penetrated by this gun.

SWEP.ImpactForce = 8

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 2411 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.5

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 30 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 6 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 600

SWEP.Firemodes = {
    {
        Mode = -1,
        -- add other attachment modifiers
    },
    {
        Mode = 1,
        -- add other attachment modifiers
    },
}

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.5

SWEP.RecoilSeed = 6589132

SWEP.RecoilPatternDrift = 0

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 0.8 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 100 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.8

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.2
SWEP.VisualRecoilPunchSights = 75
SWEP.VisualRecoilPunch = 3
SWEP.VisualRecoilUp = 0.3
SWEP.VisualRecoilRoll = 15
SWEP.VisualRecoilSide = 0.2

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 5 then
        recamount = 1.65 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%4)/10 
        
        return up, side * fakerandom, roll, punch
    end

    return up, side, roll, punch
end

-------------------------- SPREAD

SWEP.Spread = 0.0014

SWEP.SpreadAddRecoil = 0.01
SWEP.SpreadMultRecoil = 1.2
SWEP.RecoilModifierCap = 3
SWEP.RecoilModifierCapMove = 0
SWEP.RecoilModifierCapSights = 0

SWEP.SpreadMultMove = 2
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.03
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -0.5

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.3 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = false
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.15
SWEP.PostBashTime = 0.65

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-5, -7.5, 0.45),
    Ang = Angle(0.1, 1.25, -2.75),
    Magnification = 1.25,
    ViewModelFOV = 56,
}

SWEP.ViewModelFOVBase = 56

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1.5, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingPos = Vector(-0.3, -1, -1)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(19, 30, 4)

SWEP.CustomizeSnapshotPos = Vector(0, 10, 3.5)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false

-------------------------- HoldTypes

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "ar2"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "weapon_muzzle_flash_assaultrifle"
SWEP.AfterShotParticle = "weapon_muzzle_smoke"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 0.5

SWEP.ShellModel = "models/models/weapons/shared/shell_762_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.08
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = true
SWEP.DropMagazineModel = "models/weapons/csgo/mags/w_rif_ak47_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {"physics/metal/weapon_impact_soft1.wav", "physics/metal/weapon_impact_soft2.wav", "physics/metal/weapon_impact_soft3.wav"}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.8
SWEP.DropMagazineQCA = 3

-------------------------- SOUNDS

SWEP.ShootSound = "CS2.AK47.Fire"
--SWEP.ShootSoundSilenced = "CS2.AK47.Fire_Silenced"
SWEP.DistantShootSound = "CS2.AK47.Distance_Fire"
SWEP.DryFireSound = "weapons/clipempty_rifle.wav"

--SWEP.FiremodeSound = "CSGO.Rifle.Switch_Mode"

SWEP.HideBones = {
}

SWEP.HideBonesSilenced = {}

SWEP.ReloadHideBoneTables = {
}

SWEP.Animations = {
    ["fire"] = {
        Source = {"shoot1","shoot2","shoot3"},
        IKTimeLine = {{t = 0, lhik = 1, rhik = 1}},
    },
    ["reload"] = {
        Source = "reload",
		MinProgress = 0.7,
		MagSwapTime = 1,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.9,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = "weapons/cs2/ak47/ak47_clipout.ogg", t = 9/30},
            {s = "weapons/cs2/ak47/ak47_clipin.ogg", t = 30/30},
            {s = "weapons/cs2/ak47/ak47_boltpull.ogg", t = 50/30},
        },
    },
    ["draw"] = {
        Source = "draw",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.9,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = "weapons/cs2/ak47/ak47_draw.ogg", t = 0/30},
            {s = "weapons/cs2/ak47/ak47_boltpull.ogg", t = 11/30},
        },
    },
    ["idle"] = {
        Source = "idle",
    },
    ["inspect"] = {
        Source = "lookat01",
        MinProgress = 0.1,
        FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.15,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.45,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.65,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = "weapons/cs2/movement1.ogg", t = 2/30},
            {s = "weapons/cs2/movement2.ogg", t = 70/30},
            {s = "weapons/cs2/movement3.ogg", t = 110/30},
        },
    },
}

-------------------------- ATTACHMENTS

SWEP.AttachmentElements = {
    ["stock_none"] = {
        Bodygroups = {
            {1,3},
        },
    },
    ["topcover"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["grip_poly"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["barrel_tactical"] = {
        Bodygroups = {
            {3,1},
        },
    AttPosMods = { [2] = { Pos = Vector(0, -3.4, 25.3), } }
    },
	["barrel_tactical_alt"] = {
        Bodygroups = {
            {3,4},
        },
    AttPosMods = { [2] = { Pos = Vector(0, -3.4, 25.3), } }
    },
    ["barrel_long"] = {
        Bodygroups = {
            {3,2},
        },
    AttPosMods = { [2] = { Pos = Vector(0, -3.4, 31.4), } }
    },
    ["barrel_short"] = {
        Bodygroups = {
            {3,3},
        },
    AttPosMods = { 
	[2] = { Pos = Vector(0, -3.4, 17.5), },
	[6] = { Pos = Vector(0, -2.3, 12), },
	}
    },
    ["mag_drum"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["mag_556"] = {
        Bodygroups = {
            {4,2},
        },
    },
    ["mag_556_ext"] = {
        Bodygroups = {
            {4,3},
        },
    },
    ["mag_545"] = {
        Bodygroups = {
            {4,4},
        },
    },
    ["mag_545_ext"] = {
        Bodygroups = {
            {4,5},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {4,6},
        },
    },
    ["stock_rpk"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["stock_skeleton"] = {
        Bodygroups = {
            {1,2},
        },
    },
    ["csgo_rail_optic_2_alt"] = {
    AttPosMods = { [4] = { Pos = Vector(0.075, -4, 4.3), } }
    },
}

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(4, -0.5, 0.9),
	ModelAngleOffset = Angle(-3, 0, 0)
    },
}

SWEP.Attachments = {
    {
        PrintName = "Ammo",
        Bone = "v_weapon.AK47_clip",
        Category = "go_ammo",
        Pos = Vector(0, -1, -0.5),
    },
    {
        PrintName = "Perks",
        Category = "go_perk",
        Bone = "v_weapon.ak47_Parent",
        Pos = Vector(0, 1, 4),
    },
    {
        PrintName = "Skins",
        --Bone = "v_weapon.Clip",
        Category = "go_skins_ak47",
		InstalledElements = {"skins"},
		ExcludeElements = {"camos"},
		CosmeticOnly = true,
        Bone = "v_weapon.ak47_Parent",
        Pos = Vector(0, 1, 4),
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/stickers/v_models/rif_ak47_decal_a.mdl",
        Category = "stickers",
        Bone = "v_weapon.ak47_Parent",
        Pos = Vector(0, -3.75, 1),
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/stickers/v_models/rif_ak47_decal_b.mdl",
        Category = "stickers",
        Bone = "v_weapon.ak47_Parent",
        Pos = Vector(0, -3.5, 4.5),
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/stickers/v_models/rif_ak47_decal_c.mdl",
        Category = "stickers",
        Bone = "v_weapon.ak47_Parent",
        Pos = Vector(0, -5, 8.5),
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
		InstalledElements = {"camos"},
		ExcludeElements = {"skins"},
        CosmeticOnly = true,
        Bone = "v_weapon.ak47_Parent",
        Pos = Vector(0, 1, 2.75),
    },
    {
        PrintName = "Charm",
        Category = "charm",
        Bone = "v_weapon.ak47_Parent",
        Pos = Vector(0.8, -3.3, 8.5),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "Stats",
        Category = {"killcounter","killcounter2"},
        Bone = "v_weapon.stattrack",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 4