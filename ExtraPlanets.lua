--- STEAMODDED HEADER
--- MOD_NAME: Extra Planets
--- MOD_ID: ExtraPlanets
--- MOD_AUTHOR: [elbe]
--- MOD_DESCRIPTION: Adds different variations to emodded planets
--- BADGE_COLOUR: 225a9e
--- PREFIX: ep
--- DEPENDENCIES: [familiar>=0.1.7, Bunco]

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

if (SMODS.Mods["BJ"] or {}).can_load and (SMODS.Mods["familiar"] or {}).can_load then

    SMODS.Atlas({
        key = "blackjack",
        path = "Blackjack.png",
        px = 71,
        py = 95
    })

    SMODS.Planet {
        key = 'tetra',
        set = "Familiar_Planets",
        name = "Tetra",
        loc_txt = {
            name = "Tetra",
            text = {
                "(lvl:#1#+i) Imaginary Level Up",
                "{C:attention}#4#",
                "{C:red}X#2#{} Mult and",
                "{C:blue}X#3#{} chips",
            }
        },
        config = { extra = {hand = "bj_natural", xmult = 1.1, xchips = 1.2, softlock = true} },
        atlas = "blackjack",
        pos = {x = 0, y = 0},
        loc_vars = function(self, info_queue, card)
            return { vars = {G.GAME.hands[card.ability.extra.hand].level, card.ability.extra.xmult, card.ability.extra.xchips,G.localization.misc.poker_hands[card.ability.extra.hand] } }
        end,
        can_use = function(self, card, area, copier)
            return true
        end,
        in_pool = function(self)
            if G.GAME.hands["bj_natural"].played > 0 then
                return true
            end
            return false
        end,
        use = function(self, card)
            mult_level_up_hand(card, card.ability.extra.hand, false, card.ability.extra.xmult, card.ability.extra.xchips)
        end,
    }

    SMODS.Planet {
        key = 'cubic',
        set = "Familiar_Planets",
        name = "Cubic",
        loc_txt = {
            name = "Cubic",
            text = {
                "(lvl:#1#+i) Imaginary Level Up",
                "{C:attention}#4#",
                "{C:red}X#2#{} Mult and",
                "{C:blue}X#3#{} chips",
            }
        },
        config = { extra = {hand = "bj_jack_three", xmult = 1.2, xchips = 1.3, softlock = true} },
        atlas = "blackjack",
        pos = {x = 1, y = 0},
        loc_vars = function(self, info_queue, card)
            return { vars = {G.GAME.hands[card.ability.extra.hand].level, card.ability.extra.xmult, card.ability.extra.xchips,G.localization.misc.poker_hands[card.ability.extra.hand] } }
        end,
        can_use = function(self, card, area, copier)
            return true
        end,
        in_pool = function(self)
            if G.GAME.hands["bj_jack_three"].played > 0 then
                return true
            end
            return false
        end,
        use = function(self, card)
            mult_level_up_hand(card, card.ability.extra.hand, false, card.ability.extra.xmult, card.ability.extra.xchips)
        end,
    }

    SMODS.Planet {
        key = 'octa',
        set = "Familiar_Planets",
        name = "Octa",
        loc_txt = {
            name = "Octa",
            text = {
                "(lvl:#1#+i) Imaginary Level Up",
                "{C:attention}#4#",
                "{C:red}X#2#{} Mult and",
                "{C:blue}X#3#{} chips",
            }
        },
        config = { extra = {hand = "bj_jack", xmult = 1.1, xchips = 1.5, softlock = true} },
        atlas = "blackjack",
        pos = {x = 2, y = 0},
        loc_vars = function(self, info_queue, card)
            return { vars = {G.GAME.hands[card.ability.extra.hand].level, card.ability.extra.xmult, card.ability.extra.xchips,G.localization.misc.poker_hands[card.ability.extra.hand] } }
        end,
        can_use = function(self, card, area, copier)
            return true
        end,
        in_pool = function(self)
            if G.GAME.hands["bj_jack"].played > 0 then
                return true
            end
            return false
        end,
        use = function(self, card)
            mult_level_up_hand(card, card.ability.extra.hand, false, card.ability.extra.xmult, card.ability.extra.xchips)
        end,
    }

    SMODS.Planet {
        key = 'dodeca',
        set = "Familiar_Planets",
        name = "Dodeca",
        loc_txt = {
            name = "Dodeca",
            text = {
                "(lvl:#1#+i) Imaginary Level Up",
                "{C:attention}#4#",
                "{C:red}X#2#{} Mult and",
                "{C:blue}X#3#{} chips",
            }
        },
        config = { extra = {hand = "bj_jack_flush", xmult = 1.25, xchips = 1.75, softlock = true} },
        atlas = "blackjack",
        pos = {x = 0, y = 1},
        loc_vars = function(self, info_queue, card)
            return { vars = {G.GAME.hands[card.ability.extra.hand].level, card.ability.extra.xmult, card.ability.extra.xchips,G.localization.misc.poker_hands[card.ability.extra.hand] } }
        end,
        can_use = function(self, card, area, copier)
            return true
        end,
        in_pool = function(self)
            if G.GAME.hands["bj_jack_flush"].played > 0 then
                return true
            end
            return false
        end,
        use = function(self, card)
            mult_level_up_hand(card, card.ability.extra.hand, false, card.ability.extra.xmult, card.ability.extra.xchips)
        end,
    }

    SMODS.Planet {
        key = 'icosa',
        set = "Familiar_Planets",
        name = "Icosa",
        loc_txt = {
            name = "Icosa",
            text = {
                "(lvl:#1#+i) Imaginary Level Up",
                "{C:attention}#4#",
                "{C:red}X#2#{} Mult and",
                "{C:blue}X#3#{} chips",
            }
        },
        config = { extra = {hand = "bj_jack_house", xmult = 1.3, xchips = 1.8, softlock = true} },
        atlas = "blackjack",
        pos = {x = 1, y = 1},
        loc_vars = function(self, info_queue, card)
            return { vars = {G.GAME.hands[card.ability.extra.hand].level, card.ability.extra.xmult, card.ability.extra.xchips,G.localization.misc.poker_hands[card.ability.extra.hand] } }
        end,
        can_use = function(self, card, area, copier)
            return true
        end,
        in_pool = function(self)
            if G.GAME.hands["bj_jack_house"].played > 0 then
                return true
            end
            return false
        end,
        use = function(self, card)
            mult_level_up_hand(card, card.ability.extra.hand, false, card.ability.extra.xmult, card.ability.extra.xchips)
        end,
    }

    SMODS.Planet {
        key = 'pi',
        set = "Familiar_Planets",
        name = "Pi",
        loc_txt = {
            name = "Pi",
            text = {
                "(lvl:#1#+i) Imaginary Level Up",
                "{C:attention}#4#",
                "{C:red}X#2#{} Mult and",
                "{C:blue}X#3#{} chips",
            }
        },
        config = { extra = {hand = "bj_jack_flush_house", xmult = 1.3, xchips = 1.8, softlock = true} },
        atlas = "blackjack",
        pos = {x = 2, y = 1},
        loc_vars = function(self, info_queue, card)
            return { vars = {G.GAME.hands[card.ability.extra.hand].level, card.ability.extra.xmult, card.ability.extra.xchips,G.localization.misc.poker_hands[card.ability.extra.hand] } }
        end,
        can_use = function(self, card, area, copier)
            return true
        end,
        in_pool = function(self)
            if G.GAME.hands["bj_jack_flush_house"].played > 0 then
                return true
            end
            return false
        end,
        use = function(self, card)
            mult_level_up_hand(card, card.ability.extra.hand, false, card.ability.extra.xmult, card.ability.extra.xchips)
        end,
    }

end

if (SMODS.Mods["fibonacci"] or {}).can_load and (SMODS.Mods["familiar"] or {}).can_load then

    SMODS.Atlas({
        key = "fibonacci",
        path = "Fibonacci.png",
        px = 71,
        py = 95
    })

    SMODS.Consumable{
        key = "pavor",
        set = "Familiar_Planets",
        loc_txt = {
            name = "Pavor",
            text = {
                "(lvl:#1#+i) Imaginary Level Up",
                "{C:attention}#4#",
                "{C:red}X#2#{} Mult and",
                "{C:blue}X#3#{} chips",
            }
        },
        config = { extra = {hand = "fibonacci_Fibonacci", xmult = 1.2, xchips = 1.7, softlock = true} },
        pos = {
            x = 0,
            y = 0,
        },
        cost = 7,
        atlas = "fibonacci",
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
        key = "metus",
        set = "Familiar_Planets",
        loc_txt = {
            name = "Metus",
            text = {
                "(lvl:#1#+i) Imaginary Level Up",
                "{C:attention}#4#",
                "{C:red}X#2#{} Mult and",
                "{C:blue}X#3#{} chips",
            }
        },
        config = { extra = {hand = "fibonacci_Flushonacci", xmult = 1.3, xchips = 1.8, softlock = true} },
        pos = {
            x = 1,
            y = 0,
        },
        cost = 7,
        atlas = "fibonacci",
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
