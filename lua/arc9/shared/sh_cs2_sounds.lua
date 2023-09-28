sound.Add( {
    name = "CS2.AK47.Fire",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
    pitch = {97,103},
	soundlevel = SNDLVL_GUNFIRE,
    sound = {
        "weapons/cs2/ak47/ak47_01.ogg",
        "weapons/cs2/ak47/ak47_02.ogg",
        "weapons/cs2/ak47/ak47_03.ogg",
        "weapons/cs2/ak47/ak47_04.ogg",
    }
} )

sound.Add( {
    name = "CS2.AK47.Distance_Fire",
    channel = CHAN_DISTANT,
    volume = 0.3,
    level = 120,
    pitch = {97,103},
    sound = {
        "weapons/cs2/ak47/ak47_distant.ogg",
    }
} )