--- STEAMODDED HEADER
--- MOD_NAME: Extra Planets
--- MOD_ID: ExtraPlanets
--- MOD_AUTHOR: [elbe]
--- MOD_DESCRIPTION: Adds different variations to emodded planets
--- BADGE_COLOUR: 225a9e
--- PREFIX: ep

---------------------------------------------- 
------------MOD CODE ------------------------- 

if (SMODS.Mods["Bunco"] or {}).can_load and (SMODS.Mods["familiar"] or {}).can_load then

    SMODS.Atlas({
        key = "bunco",
        path = "Bunco.png",
        px = 71,
        py = 95
    })

    SMODS.Consumable{
        key = "tabet",
        set = "Familiar_Planets",
        loc_txt = {
            name = "Tobet",
            text = {
                "(lvl:#1#+i) Imaginary Level Up",
                "{C:attention}#4#",
                "{C:red}X#2#{} Mult and",
                "{C:blue}X#3#{} chips",
            }
        },
        config = { extra = {hand = "bunc_Spectrum", xmult = 1.1, xchips = 1.5, softlock = true} },
        pos = {
            x = 0,
            y = 0,
        },
        cost = 7,
        atlas = "bunco",
        unlocked = true,
        discovered = false,
        loc_vars = function(self, info_queue, card)
            return { vars = {G.GAME.hands[card.ability.extra.hand].level, card.ability.extra.xmult, card.ability.extra.xchips,G.localization.misc.poker_hands[card.ability.extra.hand] } }
        end,
        can_use = function(self, card, area, copier)
            return true
        end,
        use = function(self, card)
            mult_level_up_hand(card, card.ability.extra.hand, false, card.ability.extra.xmult, card.ability.extra.xchips)
        end,
    }
    SMODS.Consumable{
        key = "pele",
        set = "Familiar_Planets",
        loc_txt = {
            name = "Pele",
            text = {
                "(lvl:#1#+i) Imaginary Level Up",
                "{C:attention}#4#",
                "{C:red}X#2#{} Mult and",
                "{C:blue}X#3#{} chips",
            }
        },
        config = { extra = {hand = "bunc_Straight Spectrum", xmult = 1.25, xchips = 1.75, softlock = true} },
        pos = {
            x = 1,
            y = 0,
        },
        cost = 7,
        atlas = "bunco",
        unlocked = true,
        discovered = false,
        loc_vars = function(self, info_queue, card)
            return { vars = {G.GAME.hands[card.ability.extra.hand].level, card.ability.extra.xmult, card.ability.extra.xchips,G.localization.misc.poker_hands[card.ability.extra.hand] } }
        end,
        can_use = function(self, card, area, copier)
            return true
        end,
        use = function(self, card)
            mult_level_up_hand(card, card.ability.extra.hand, false, card.ability.extra.xmult, card.ability.extra.xchips)
        end,
    }
    SMODS.Consumable{
        key = "anguta",
        set = "Familiar_Planets",
        loc_txt = {
            name = "Anguta",
            text = {
                "(lvl:#1#+i) Imaginary Level Up",
                "{C:attention}#4#",
                "{C:red}X#2#{} Mult and",
                "{C:blue}X#3#{} chips",
            }
        },
        config = { extra = {hand = "bunc_Spectrum House", xmult = 1.2, xchips = 1.7, softlock = true} },
        pos = {
            x = 2,
            y = 0,
        },
        cost = 7,
        atlas = "bunco",
        unlocked = true,
        discovered = false,
        loc_vars = function(self, info_queue, card)
            return { vars = {G.GAME.hands[card.ability.extra.hand].level, card.ability.extra.xmult, card.ability.extra.xchips,G.localization.misc.poker_hands[card.ability.extra.hand] } }
        end,
        can_use = function(self, card, area, copier)
            return true
        end,
        use = function(self, card)
            mult_level_up_hand(card, card.ability.extra.hand, false, card.ability.extra.xmult, card.ability.extra.xchips)
        end,
    }
    SMODS.Consumable{
        key = "tane",
        set = "Familiar_Planets",
        loc_txt = {
            name = "Tane",
            text = {
                "(lvl:#1#+i) Imaginary Level Up",
                "{C:attention}#4#",
                "{C:red}X#2#{} Mult and",
                "{C:blue}X#3#{} chips",
            }
        },
        config = { extra = {hand = "bunc_Spectrum Five", xmult = 1.25, xchips = 1.75, softlock = true} },
        pos = {
            x = 3,
            y = 0,
        },
        cost = 7,
        atlas = "bunco",
        unlocked = true,
        discovered = false,
        loc_vars = function(self, info_queue, card)
            return { vars = {G.GAME.hands[card.ability.extra.hand].level, card.ability.extra.xmult, card.ability.extra.xchips,G.localization.misc.poker_hands[card.ability.extra.hand] } }
        end,
        can_use = function(self, card, area, copier)
            return true
        end,
        use = function(self, card)
            mult_level_up_hand(card, card.ability.extra.hand, false, card.ability.extra.xmult, card.ability.extra.xchips)
        end,
    }

end

----------------------------------------------
------------MOD CODE END---------------------
