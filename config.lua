Config                              = {}

Config.Debugmode                    = false 
Config.DebugPoly                    = false

Config.UseNativeNotifiactions       = false
Config.TeleportToLastPosWhenNoRoute = false
Config.AlwaysTeleportToSeat         = false
Config.AlwaysTeleportOutOfSeat      = false

Config.MaxInteractionDist           = 2.0
Config.MaxPromptDist                = 1.8
Config.MaxTilt                      = 20.0

Config.DefaultKeybinds = {
    GetUp = {
        Keyboard                    = 'X',
        PadAnalog                   = 'RRIGHT_INDEX'
    },

    SitDown = {
        SitKeyboard                 = 'E',
        LayKeyboard                 = 'G',
        SitPadAnalog                = 'LLEFT_INDEX',
        LayPadAnalog                = 'LRIGHT_INDEX'
    }
}

Config.AddChatSuggestions           = false
Config.UsePrompts                   = false
Config.ShowHelpText                 = false
Config.ReduceStress                 = false

Config.Target                       = 'ox_target'
Config.UseTargetingCoords           = true
Config.Targeting = {
    SitIcon                         = "fas fa-chair",
    LayIcon                         = "fas fa-bed",
    SitLabel                        = "Sit Down",
    LayLabel                        = "Lay Down",
}

Config.Lang = {
    Notification = {
        OccupiedSit     = "This seat is already occupied!",
        OccupiedLay     = "You can't lay down here!",
        NoAvailable     = "No seat is avalible!",
        NoFound         = "No seats were found!",
        NoBedFound      = "Nothing to lay down on was found!",
        TooTilted       = "This seat is too tilted!",
        CannotReachSeat = "You can't reach this seat!",
        CannotSitInSeat = "You can't sit in this seat!",
        CannotReachBed  = "You can't reach this bed/bench!",
        AlreadyAttemptingToSit = "You are already attempting to sit down!",
        AlreadyAttemptingToLay = "You are already attempting to lay down!"
    },

    ChatSuggestions = {
        Sit     = "Sit down on the closest seat",
        Lay     = "Lay down on the closest bed/bench"
    },

    KeyMapping = {
        SitDown     = "Press %s to sit down",
        LayDown     = "Press %s to lay down",
        GetUp       = "Press %s to get up"
    },

    KeyBindingDesc = {
        Keyboard = {
            SitDown     = "Sit - Sit Down On Seat",
            LayDown     = "Sit - Lay Down On Bed/Bench",
            GetUp       = "Sit - Get Up From Seat/Bed"
        },
        PadAnalog = {
            SitDown     = "Sit - Sit Down On Seat - Controller",
            LayDown     = "Sit - Lay Down On Bed/Bench - Controller",
            GetUp       = "Sit - Get Up From Seat/Bed - Controller"
        }
    }
}

Config.SitTypes = {
    ['default'] = { 
        skipGoStraightTask = false,
        teleportIn = false,
        teleportOut = false,
        timeout = 8,
        scenarios = {
            [1] = { name = "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER", offset = vector4(0.0, 0.0, 0.0, 0.0) }
        }
     
    },
    ['chair'] = {
        scenarios = {
            [1] = { name = "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER" }
        }
    },
    ['chair2'] = {
        scenarios = {
            [1] = { name = "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER" },
            [2] = { name = "PROP_HUMAN_SEAT_ARMCHAIR", offset = vector4(0.0, 0.05, 0.0, 0.0) }
        }
    },
    ['chair3'] = {
        scenarios = {
            [1] = { name = "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER" },
            [2] = { name = "PROP_HUMAN_SEAT_ARMCHAIR", offset = vector4(0.0, 0.05, 0.0, 0.0) },
            [3] = { name = "PROP_HUMAN_SEAT_DECKCHAIR" }
        }
    },
    ['barstool'] = {
        teleportIn = true,
        scenarios = {
            [1] = { name = "PROP_HUMAN_SEAT_BAR" }
        }
    },
    ['stool'] = {
        teleportIn = true,
        scenarios = {
            [1] = { name = "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER" }
        },
    },
    ['deck'] = {
        scenarios = {
            [1] = { name = "PROP_HUMAN_SEAT_DECKCHAIR" }
        }
    },
    ['sunlounger'] = {
        skipGoStraightTask = true,
        timeout = 12,
        scenarios = {
            [1] = { name = "PROP_HUMAN_SEAT_SUNLOUNGER" }
        }
    },
    ['tattoo'] = {
        animation = { dict = "misstattoo_parlour@shop_ig_4", name = "customer_loop", offset = vector4(0.0, 0.0, -0.75, 0.0) }
    },
    ['strip_watch'] = {
        scenarios = {
            [1] = { name = "PROP_HUMAN_SEAT_STRIP_WATCH" }
        }
    },
    ['diner_booth'] = {
        teleportIn = true,
        teleportOut = true,
        scenarios = {
            [1] = { name = "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER" }
        }
    },
    ['laysit'] = {
        animation = { dict = "timetable@jimmy@mics3_ig_15@", name = "idle_a_jimmy", offset = vector4(0.0, 0.0, 0.0, 0.0) }
    },
    ['wall'] = {
        scenarios = {
            [1] = { name = "WORLD_HUMAN_SEAT_WALL" }
        }
    },
    ['steps'] = {
        scenarios = {
            [1] = { name = "WORLD_HUMAN_SEAT_STEPS" }
        }
    },
    ['ledge'] = {
        scenarios = {
            [1] = { name = "WORLD_HUMAN_SEAT_LEDGE" }
        }
    },
    ['director'] = {
        animation = { dict = "misscarsteal4@director_grip", name = "beginning_loop_director", offset = vector4(0.0, 0.0, -1.16, 0.0) },
        teleportOut = true
    },
}

Config.LayTypes = {
    ['default'] = { 
        animation = { dict = "misslamar1dead_body", name = "dead_idle" },
        exitAnimType = 0,
        exitAnim = true
    },
    ['bed'] = {
        animation = { dict = "misslamar1dead_body", name = "dead_idle" }
    },
    ['lay'] = {
        animation = { dict = "savecouch@", name = "t_sleep_loop_couch", offset = vector4(-0.1, 0.1, -0.5, 270.0) }
    },
    ['layside'] = {
        animation = { dict = "savecouch@", name = "t_sleep_loop_couch", offset = vector4(-0.1, 0.1, -0.5, 270.0) },
        exitAnimType = 2
    },
    ['layside_reverse'] = {
        animation = { dict = "savecouch@", name = "t_sleep_loop_couch", offset = vector4(0.1, 0.1, -0.5, 90.0) },
        exitAnimType = 1
    },
    ['busstop'] = {
        animation = { dict = "savecouch@", name = "t_sleep_loop_couch", offset = vector4(0.0, 0.0, -0.5, 270.0) }
    },
    ['medical'] = {
        animation = { dict = "anim@gangops@morgue@table@", name = "body_search" }
    },
    ['tattoo'] = {
        animation = { dict = "amb@world_human_sunbathe@male@front@base", name = "base", offset = vector4(0.0, 0.0, 0.0, 180.0) },
        exitAnim = false
    }
}

-- Which preset locations that should be loaded
Config.PresetLocations = {
    coroner          = true,
    lscustoms        = false,
    mrpd             = false,
    pacific_standard = false,
    paleto_bank      = false,
    paleto_so        = false,
    pdm              = false,
    sandy_so         = false,
    tattoo_shops     = true,
    tequilala        = true,
    trevors_trailer  = true,
    vanilla_unicorn  = false,

    -- Gabz Maps
    gabz_altruists = true,
    gabz_atom = true,
    gabz_aztecas = true,
    gabz_bahama = true,                 -- Bahama Mamas
    gabz_ballas = true,
    gabz_bennys = true,
    gabz_catcafe = true,
    gabz_bobcat = true,
    gabz_diner = true,                  -- Pop's Dinner
    gabz_families = true,
    gabz_firedept = true,               -- El Burro & Davis
    gabz_harmony = true,
    gabz_haters = true,
    gabz_hayes = true,
    gabz_hornys = true,
    gabz_import = true,
    gabz_lamesa_pd = true,
    gabz_lostsc = true,
    gabz_lscustoms = true, 
    gabz_marabunta = true,
    gabz_mrpd = true,
    gabz_paletocamp = true,
    gabz_ottos = true,
    gabz_pacific_standard = true,       -- This is the new pacific standard from the gabz team
    gabz_pacific_standard_old = false,  -- This is the old gabz pacific standard
    gabz_paleto_bank = true,
    gabz_paleto_so = true,
    gabz_park_ranger = true,
    gabz_pdm = true,
    gabz_pillbox = false,
    gabz_pizzeria = true,
    gabz_prison = true,
    gabz_records = true,                -- Records A Studios
    gabz_sandy_so = true,
    gabz_townhall = true,
    gabz_triads = true,
    gabz_tuners = true,
    gabz_vagos = true,
    gabz_vanilla_unicorn = true,
    gabz_weedcamp = true,

    ledge   = true,
    steps   = true,
    wall    = true,
}
