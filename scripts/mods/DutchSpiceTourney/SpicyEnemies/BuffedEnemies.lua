local mod = get_mod("DutchSpiceTourney")

UnitVariationSettings.beastmen_bestigor_dummy = table.create_copy(UnitVariationSettings.beastmen_bestigor_dummy, UnitVariationSettings.beastmen_bestigor)
UnitVariationSettings.beastmen_bestigor_dummy.material_variations.fur_tint_set_1.min = 1
UnitVariationSettings.beastmen_bestigor_dummy.material_variations.fur_tint_set_1.max = 1
UnitVariationSettings.beastmen_bestigor_dummy.material_variations.skin_tint_set_2.min = 1
UnitVariationSettings.beastmen_bestigor_dummy.material_variations.skin_tint_set_2.max = 1
UnitVariationSettings.beastmen_bestigor_dummy.material_variations.skin_tint.min = 16
UnitVariationSettings.beastmen_bestigor_dummy.material_variations.skin_tint.max = 16

UnitVariationSettings.beastmen_bestigor.material_variations.fur_tint_set_1.min = 5
UnitVariationSettings.beastmen_bestigor.material_variations.fur_tint_set_1.max = 5
UnitVariationSettings.beastmen_bestigor.material_variations.skin_tint_set_2.min = 5
UnitVariationSettings.beastmen_bestigor.material_variations.skin_tint_set_2.max = 5
UnitVariationSettings.beastmen_bestigor.material_variations.skin_tint.min = 5
UnitVariationSettings.beastmen_bestigor.material_variations.skin_tint.max = 5
UnitVariationSettings.beastmen_bestigor.material_variations.cloth_tint.min = 3
UnitVariationSettings.beastmen_bestigor.material_variations.cloth_tint.max = 3
UnitVariationSettings.beastmen_bestigor.material_variations.cloth_tint_set_1.min = 3
UnitVariationSettings.beastmen_bestigor.material_variations.cloth_tint_set_1.max = 3
UnitVariationSettings.beastmen_bestigor.material_variations.tattoo_table.min = 5
UnitVariationSettings.beastmen_bestigor.material_variations.tattoo_table.max = 5

UnitVariationSettings.chaos_marauder_tutorial= {}
UnitVariationSettings.chaos_marauder_tutorial.material_variations = {}
UnitVariationSettings.chaos_marauder_tutorial.materials_enabled_from_start = {}
table.insert(UnitVariationSettings.chaos_marauder_tutorial.materials_enabled_from_start, "tint_column")
table.insert(UnitVariationSettings.chaos_marauder_tutorial.materials_enabled_from_start, "tint_column_detail")
UnitVariationSettings.chaos_marauder_tutorial.material_variations.tint_column = {
	min = 9,
	max = 9,
	materials = {
		"mtr_outfit",
		"m_moc_attachements",
		"m_moc_hood"
	},
	variables = {
		"tint_color_set_1"
	}
}
UnitVariationSettings.chaos_marauder_tutorial.material_variations.tint_column_detail = {
	min = 10,
	max = 10,
	materials = {
		"mtr_outfit",
		"m_moc_attachements",
		"m_moc_hood",
		"mtr_body"
	},
	variables = {
		"tint_color_set_2"
	}
}

UnitVariationSettings.skaven_dummy_clan_rat= {}
UnitVariationSettings.skaven_dummy_clan_rat.material_variations = {}
UnitVariationSettings.skaven_dummy_clan_rat.materials_enabled_from_start = {}
table.insert(UnitVariationSettings.skaven_dummy_clan_rat.materials_enabled_from_start, "tint_column")
table.insert(UnitVariationSettings.skaven_dummy_clan_rat.materials_enabled_from_start, "tint_column_detail")
UnitVariationSettings.skaven_dummy_clan_rat.material_variations.tint_column = {
	min = 9,
	max = 9,
	materials = {
		"mtr_outfit",
		"m_moc_attachements",
		"m_moc_hood"
	},
	variables = {
		"tint_color_set_1"
	}
}
UnitVariationSettings.skaven_dummy_clan_rat.material_variations.tint_column_detail = {
	min = 10,
	max = 10,
	materials = {
		"mtr_outfit",
		"m_moc_attachements",
		"m_moc_hood",
		"mtr_body"
	},
	variables = {
		"tint_color_set_2"
	}
}

UnitVariationSettings.skaven_clan_rat_tutorial= {}
UnitVariationSettings.skaven_clan_rat_tutorial.material_variations = {}
UnitVariationSettings.skaven_clan_rat_tutorial.materials_enabled_from_start = {}
table.insert(UnitVariationSettings.skaven_clan_rat_tutorial.materials_enabled_from_start, "tint_column")
table.insert(UnitVariationSettings.skaven_clan_rat_tutorial.materials_enabled_from_start, "tint_column_detail")
UnitVariationSettings.skaven_clan_rat_tutorial.material_variations.tint_column = {
	min = 9,
	max = 9,
	materials = {
		"mtr_outfit",
		"m_moc_attachements",
		"m_moc_hood"
	},
	variables = {
		"tint_color_set_1"
	}
}
UnitVariationSettings.skaven_clan_rat_tutorial.material_variations.tint_column_detail = {
	min = 10,
	max = 10,
	materials = {
		"mtr_outfit",
		"m_moc_attachements",
		"m_moc_hood",
		"mtr_body"
	},
	variables = {
		"tint_color_set_2"
	}
}

local function networkify_health(health_amount)
	health_amount = math.clamp(health_amount, 0, 8191.5)
	local decimal = health_amount % 1
	local rounded_decimal = math.round(decimal * 4) * 0.25

	return math.floor(health_amount) + rounded_decimal
end
local function health_steps(value, step_multipliers)
	local value_steps = {}

	for i = 1, 8, 1 do
		local step_value = value * step_multipliers[i]
		local networkifyed_health = networkify_health(step_value)
		value_steps[i] = networkifyed_health
	end

	return value_steps
end
local elite_health_step_multipliers = {
	1,
	1,
	1.5,
	2.2,
	3.3,
	5.4,
	6.4,
	7.4
}

UnitVariationSettings.chaos_raider_tutorial.material_variations.cloth_tint.min = 32
UnitVariationSettings.chaos_raider_tutorial.material_variations.cloth_tint.max = 32
UnitVariationSettings.chaos_raider_tutorial.material_variations.tint_column.min = 32
UnitVariationSettings.chaos_raider_tutorial.material_variations.tint_column.max = 32
UnitVariationSettings.chaos_raider_tutorial.material_variations.tint_column_detail.min = 32
UnitVariationSettings.chaos_raider_tutorial.material_variations.tint_column_detail.max = 32
UnitVariationSettings.chaos_raider_tutorial.material_variations.body_tint.min = 32
UnitVariationSettings.chaos_raider_tutorial.material_variations.body_tint.max = 32

UnitVariationSettings.chaos_raider_tutorial.materials_enabled_from_start = {
	"cloth_tint",
	"tint_column",
	"tint_column_detail",
	"body_tint",
	"tattoo",
	"tattoo_color",
	"moc_attachments_tints"
}
UnitVariationSettings.chaos_raider_tutorial.material_variations.moc_attachments_tints = {
    min = 0,
    max = 31,
    materials = {
        "m_moc_attachements"
    },
    variables = {
        "tint_color_variation"
    }
}

UnitVariationSettings.beastmen_gor.material_variations.cloth_tint_set_1 = {
	min = 2,
	max = 2,
	materials = {
		"mtr_outfit"
	},
	variables = {
		"tint_color_set_1"
	}
}
UnitVariationSettings.beastmen_gor.material_variations.fur_tint_set_1 = {
	min = 13,
	max = 13,
	materials = {
		"mtr_fur"
	},
	variables = {
		"tint_color_set_1"
	}
}
UnitVariationSettings.beastmen_gor.material_variations.skin_tint_set_2 = {
	min = 12,
	max = 12,
	materials = {
		"mtr_skin",
		"mtr_head"
	},
	variables = {
		"tint_color_set_2"
	}
}
UnitVariationSettings.beastmen_gor.material_variations.tattoo_table = {
	min = 4,
	max = 4,
	materials = {
		"mtr_skin",
		"mtr_head"
	},
	variables = {
		"tattoo_color_set"
	}
}
UnitVariationSettings.beastmen_gor.materials_enabled_from_start = {
	"skin_tint",
	"horn_tint",
	"cloth_tint",
	"tattoo",
	"tattoo_head",
	"tattoo_tint",
	"tattoo_table",
	"cloth_tint_set_1",
	"fur_tint_set_1",
	"skin_tint_set_2"
}
UnitVariationSettings.skaven_storm_vermin.material_variations.cloth_tint.min = 31
UnitVariationSettings.skaven_storm_vermin.material_variations.cloth_tint.max = 31
UnitVariationSettings.skaven_storm_vermin.material_variations.skin_tint.min = 1
UnitVariationSettings.skaven_storm_vermin.material_variations.skin_tint.max = 1
--UnitVariationSettings.skaven_clan_rat_tutorial = table.create_copy(UnitVariationSettings.skaven_clan_rat_tutorial, UnitVariationSettings.skaven_storm_vermin)
--UnitVariationSettings.skaven_clan_rat_tutorial.material_variations.tint_set_1 = {
--	min = 4,
--	max = 4,
--	materials = {
--		"mtr_outfit"
--	},
--	variables = {
--		"tint_color_set_1"
--	}
--}
--UnitVariationSettings.skaven_clan_rat_tutorial.material_variations.tint_set_2 = {
--	min = 4,
--	max = 4,
--	materials = {
--		"mtr_outfit"
--	},
--	variables = {
--		"tint_color_set_2"
--	}
--}
--UnitVariationSettings.skaven_clan_rat_tutorial.materials_enabled_from_start = {
--	"skin_tint",
--	"cloth_tint",
--	"tint_set_1",
--	"tint_set_2"
--}
--UnitVariationSettings.skaven_clan_rat_tutorial = table.create_copy(UnitVariationSettings.skaven_clan_rat_tutorial, UnitVariationSettings.skaven_plague_monk)
--UnitVariationSettings.skaven_clan_rat_tutorial.material_variations.tint_set_1 = {
--	min = 11,
--	max = 11,
--	materials = {
--		"mtr_outfit"
--	},
--	variables = {
--		"tint_color_set_1"
--	}
--}
--UnitVariationSettings.skaven_clan_rat_tutorial.material_variations.tint_set_2 = {
--	min = 3,
--	max = 3,
--	materials = {
--		"mtr_outfit"
--	},
--	variables = {
--		"tint_color_set_2"
--	}
--}
--UnitVariationSettings.skaven_clan_rat_tutorial.material_variations.cloth_tint.min = 31
--UnitVariationSettings.skaven_clan_rat_tutorial.material_variations.cloth_tint.max = 31
--UnitVariationSettings.skaven_clan_rat_tutorial.material_variations.skin_tint.min = 32
--UnitVariationSettings.skaven_clan_rat_tutorial.material_variations.skin_tint.max = 32
--UnitVariationSettings.skaven_clan_rat_tutorial.materials_enabled_from_start = {
--	"skin_tint",
--	"cloth_tint",
--	"tint_set_1",
--	"tint_set_2"
--}
UnitVariationSettings.skaven_dummy_slave = table.create_copy(UnitVariationSettings.skaven_dummy_slave, UnitVariationSettings.skaven_storm_vermin_with_shield)
UnitVariationSettings.skaven_dummy_slave.material_variations.cloth_tint.min = 31
UnitVariationSettings.skaven_dummy_slave.material_variations.cloth_tint.max = 31
UnitVariationSettings.skaven_dummy_slave.material_variations.tint_set_1 = {
	min = 4,
	max = 4,
	materials = {
		"mtr_outfit"
	},
	variables = {
		"tint_color_set_1"
	}
}
UnitVariationSettings.skaven_dummy_slave.material_variations.tint_set_2 = {
	min = 5,
	max = 5,
	materials = {
		"mtr_outfit"
	},
	variables = {
		"tint_color_set_2"
	}
}
UnitVariationSettings.skaven_dummy_slave.materials_enabled_from_start = {
	"skin_tint",
	"cloth_tint",
	"tint_set_1",
	"tint_set_2"
}

UnitVariationSettings.beastmen_gor_dummy = table.create_copy(UnitVariationSettings.beastmen_gor_dummy, UnitVariationSettings.beastmen_gor)
UnitVariationSettings.beastmen_gor_dummy.materials_enabled_from_start = {
	"skin_tint",
	"horn_tint",
	"cloth_tint",
	"tattoo",
	"tattoo_head",
	"tattoo_tint",
	"fur_tint_set_1",
    "skin_tint_set_2"
}
UnitVariationSettings.beastmen_gor_dummy.material_variations.tattoo_tint.min = 16
UnitVariationSettings.beastmen_gor_dummy.material_variations.tattoo_tint.max = 31
UnitVariationSettings.beastmen_gor_dummy.material_variations.skin_tint_set_2.min = 3
UnitVariationSettings.beastmen_gor_dummy.material_variations.skin_tint_set_2.max = 3
UnitVariationSettings.beastmen_gor_dummy.material_variations.fur_tint_set_1.min = 8
UnitVariationSettings.beastmen_gor_dummy.material_variations.fur_tint_set_1.max = 8
UnitVariationSettings.beastmen_gor_dummy.material_variations.skin_tint.min = 16
UnitVariationSettings.beastmen_gor_dummy.material_variations.skin_tint.max = 16
UnitVariationSettings.beastmen_gor_dummy.material_variations.cloth_tint.min = 3
UnitVariationSettings.beastmen_gor_dummy.material_variations.cloth_tint.max = 3


AttachmentNodeLinking.ai_marauder_shield_back = {
    wielded = {
        {
            target = 0,
            source = "a_shield"
        }
    },
    unwielded = {
        {
            target = 0,
            source = "a_shield"
        }
    }
}
local items = {
    moc_helmet_11 = {
        unit_extension_template = "ai_helmet_unit",
        unit_name = "units/beings/enemies/addons/chaos_marauder/moc_helmet_11/moc_helmet_11",
        attachment_node_linking = AttachmentNodeLinking.ai_helmet
    },
    wpn_moc_mace_01 = {
        unit_name = "units/weapons/enemy/wpn_chaos_set/wpn_moc_mace_01",
        attachment_node_linking = AttachmentNodeLinking.ai_mace
    },
    wpn_chaos_2h_axe_1 = {
        drop_on_hit = true,
		unit_name = "units/weapons/enemy/wpn_chaos_set/wpn_chaos_2h_axe_01",
		attachment_node_linking = AttachmentNodeLinking.ai_2h
    },
    wpn_moc_axe_01_right = {
        unit_name = "units/weapons/enemy/wpn_chaos_set/wpn_moc_axe_01",
		attachment_node_linking = AttachmentNodeLinking.ai_1h_weapon_dual.right
    },
    wpn_moc_axe_02_right = {
		unit_name = "units/weapons/enemy/wpn_chaos_set/wpn_moc_axe_02",
		attachment_node_linking = AttachmentNodeLinking.ai_1h_weapon_dual.right
	},
	wpn_moc_axe_01_left = {
		unit_name = "units/weapons/enemy/wpn_chaos_set/wpn_moc_axe_01",
		attachment_node_linking = AttachmentNodeLinking.ai_1h_weapon_dual.left
	},
	wpn_moc_axe_02_left = {
		unit_name = "units/weapons/enemy/wpn_chaos_set/wpn_moc_axe_02",
		attachment_node_linking = AttachmentNodeLinking.ai_1h_weapon_dual.left
	},
    wpn_beastmen_minotaur_dual_axes_right = {
		unit_name = "units/weapons/enemy/wpn_bm_minotaur_set_01/wpn_bm_minotaur_axe_02",
		attachment_node_linking = AttachmentNodeLinking.ai_beastmen_minotaur_dual.right
	},
    wpn_skaven_sword_dual_right = {
		unit_name = "units/weapons/enemy/wpn_skaven_set/wpn_skaven_sword_dual_right",
		attachment_node_linking = AttachmentNodeLinking.ai_1h_weapon.right
	},
    wpn_skaven_sword_dual_left = {
		unit_name = "units/weapons/enemy/wpn_skaven_set/wpn_skaven_sword_dual_left",
		attachment_node_linking = AttachmentNodeLinking.ai_1h_weapon.left
	},
    wpn_chaos_sorcerer_book = {
		unit_name = "units/weapons/enemy/wpn_chaos_sorcerer_book/wpn_chaos_sorcerer_book",
		attachment_node_linking = AttachmentNodeLinking.ai_chaos_sorcerer_book
	},
    woc_helmet_blk_shadow_lieutenant_01 = {
		unit_extension_template = "ai_helmet_unit",
		unit_name = "units/beings/enemies/addons/blk_shadow_lieutenant/blk_helmet_01",
		attachment_node_linking = AttachmentNodeLinking.ai_helmet
	},
	woc_helmet_blk_shadow_lieutenant_02 = {
		unit_extension_template = "ai_helmet_unit",
		unit_name = "units/beings/enemies/addons/blk_shadow_lieutenant/blk_helmet_02",
		attachment_node_linking = AttachmentNodeLinking.ai_helmet
	},
	woc_helmet_blk_shadow_lieutenant_03 = {
		unit_extension_template = "ai_helmet_unit",
		unit_name = "units/beings/enemies/addons/blk_shadow_lieutenant/blk_helmet_03",
		attachment_node_linking = AttachmentNodeLinking.ai_helmet
	},
	woc_helmet_blk_shadow_lieutenant_04 = {
		unit_extension_template = "ai_helmet_unit",
		unit_name = "units/beings/enemies/addons/blk_shadow_lieutenant/blk_helmet_04",
		attachment_node_linking = AttachmentNodeLinking.ai_helmet
	},
    wpn_chaos_2h_axe_1_moc = {
		drop_on_hit = true,
		unit_name = "units/weapons/enemy/wpn_chaos_set/wpn_moc_2h_axe_01",
		attachment_node_linking = AttachmentNodeLinking.ai_2h
	},
	wpn_chaos_2h_axe_2_moc = {
		drop_on_hit = true,
		unit_name = "units/weapons/enemy/wpn_chaos_set/wpn_moc_2h_axe_02",
		attachment_node_linking = AttachmentNodeLinking.ai_2h
	},
    wpn_bm_bestigor_halberd_01 = {
		unit_name = "units/weapons/enemy/wpn_bm_bestigor_set_01/wpn_bm_bestigor_halberd_01",
		attachment_node_linking = AttachmentNodeLinking.ai_spear
	},
    wpn_bm_bestigor_halberd_02 = {
		unit_name = "units/weapons/enemy/wpn_bm_bestigor_set_01/wpn_bm_bestigor_halberd_02",
		attachment_node_linking = AttachmentNodeLinking.ai_spear
	},
	wpn_bm_bestigor_halberd_03 = {
		unit_name = "units/weapons/enemy/wpn_bm_bestigor_set_01/wpn_bm_bestigor_halberd_03",
		attachment_node_linking = AttachmentNodeLinking.ai_spear
	},
    wpn_bm_bestigor_halberd_04 = {
		unit_name = "units/weapons/enemy/wpn_bm_bestigor_set_01/wpn_bm_bestigor_halberd_04",
		attachment_node_linking = AttachmentNodeLinking.ai_spear
	},
	wpn_bm_bestigor_halberd_05 = {
		unit_name = "units/weapons/enemy/wpn_bm_bestigor_set_01/wpn_bm_bestigor_halberd_05",
		attachment_node_linking = AttachmentNodeLinking.ai_spear
	},
    wpn_bm_bestigor_halberd_06 = {
		unit_name = "units/weapons/enemy/wpn_bm_bestigor_set_01/wpn_bm_bestigor_halberd_06",
		attachment_node_linking = AttachmentNodeLinking.ai_spear
	},
    wpn_marauder_shield_01_back = {
		unit_extension_template = "ai_shield_unit",
		unit_name = "units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield_01",
		attachment_node_linking = AttachmentNodeLinking.ai_marauder_shield_back,
		drop_unit_names = {
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield1_break_01",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield1_break_03"
		}
	},
    wpn_marauder_shield_01 = {
		unit_extension_template = "ai_shield_unit",
		unit_name = "units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield_01",
		attachment_node_linking = AttachmentNodeLinking.ai_marauder_shield,
		drop_unit_names = {
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield1_break_01",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield1_break_03"
		}
	},
	wpn_marauder_shield_02 = {
		unit_extension_template = "ai_shield_unit",
		unit_name = "units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield_02",
		attachment_node_linking = AttachmentNodeLinking.ai_marauder_shield,
		drop_unit_names = {
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shieldskull_break_01",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield7_break_01",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield7_break_02",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield7_break_03",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield7_break_04"
		}
	},
	wpn_marauder_shield_03 = {
		unit_extension_template = "ai_shield_unit",
		unit_name = "units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield_03",
		attachment_node_linking = AttachmentNodeLinking.ai_marauder_shield,
		drop_unit_names = {
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield7_break_02",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield7_break_03",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield7_break_04"
		}
	},
	wpn_marauder_shield_04 = {
		unit_extension_template = "ai_shield_unit",
		unit_name = "units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield_04",
		attachment_node_linking = AttachmentNodeLinking.ai_marauder_shield,
		drop_unit_names = {
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield9_break_01",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield9_break_02",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield7_break_02",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield7_break_03",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield7_break_04"
		}
	},
	wpn_marauder_shield_05 = {
		unit_extension_template = "ai_shield_unit",
		unit_name = "units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield_05",
		attachment_node_linking = AttachmentNodeLinking.ai_marauder_shield,
		drop_unit_names = {
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield5_break_01",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield7_break_02",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield7_break_03",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield7_break_04"
		}
	},
	wpn_marauder_shield_06 = {
		unit_extension_template = "ai_shield_unit",
		unit_name = "units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield_06",
		attachment_node_linking = AttachmentNodeLinking.ai_marauder_shield,
		drop_unit_names = {
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield1_break_01",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield1_break_03",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shieldskull_break_01"
		}
	},
	wpn_marauder_shield_07 = {
		unit_extension_template = "ai_shield_unit",
		unit_name = "units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield_07",
		attachment_node_linking = AttachmentNodeLinking.ai_marauder_shield,
		drop_unit_names = {
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield7_break_01",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield7_break_02",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield7_break_03",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield7_break_04"
		}
	},
	wpn_marauder_shield_08 = {
		unit_extension_template = "ai_shield_unit",
		unit_name = "units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield_08",
		attachment_node_linking = AttachmentNodeLinking.ai_marauder_shield,
		drop_unit_names = {
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shieldskull_break_02",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield7_break_02",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield7_break_03",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield7_break_04"
		}
	},
	wpn_marauder_shield_09 = {
		unit_extension_template = "ai_shield_unit",
		unit_name = "units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield_09",
		attachment_node_linking = AttachmentNodeLinking.ai_marauder_shield,
		drop_unit_names = {
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shieldskull_break_02",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield1_break_01",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield1_break_02",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield9_break_01",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield9_break_02"
		}
	},
	wpn_marauder_shield_10 = {
		unit_extension_template = "ai_shield_unit",
		unit_name = "units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield_10",
		attachment_node_linking = AttachmentNodeLinking.ai_marauder_shield,
		drop_unit_names = {
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield5_break_01",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shieldskull_break_01",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield7_break_02",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield7_break_03",
			"units/weapons/enemy/wpn_chaos_shields/wpn_moc_shield7_break_04"
		}
	},
    wpn_skaven_shield_45 = {
		unit_extension_template = "ai_shield_unit",
		unit_name = "units/weapons/enemy/wpn_skaven_set/wpn_skaven_shield_45",
		unbreakable = true,
		attachment_node_linking = AttachmentNodeLinking.ai_shield
	},
    wpn_skaven_shield_44 = {
		unit_extension_template = "ai_shield_unit",
		unit_name = "units/weapons/enemy/wpn_skaven_set/wpn_skaven_shield_44",
		attachment_node_linking = AttachmentNodeLinking.ai_shield,
		drop_unit_names = {
			"units/weapons/enemy/wpn_skaven_set/wpn_shield_shard_triangle_02",
			"units/weapons/enemy/wpn_skaven_set/wpn_shield_shard_triangle_03",
			"units/weapons/enemy/wpn_skaven_set/wpn_shield_shard_triangle_04",
			"units/weapons/enemy/wpn_skaven_set/wpn_shield_shard_metal",
			"units/weapons/enemy/wpn_skaven_set/wpn_shield_shard_metal_02"
		}
	},
    wpn_bm_gor_axe_01 = {
		unit_name = "units/weapons/enemy/wpn_bm_gor_set_01/wpn_bm_gor_axe_01",
		attachment_node_linking = AttachmentNodeLinking.ai_1h_weapon.right
	},
	wpn_bm_gor_axe_02 = {
		unit_name = "units/weapons/enemy/wpn_bm_gor_set_01/wpn_bm_gor_axe_02",
		attachment_node_linking = AttachmentNodeLinking.ai_1h_weapon.right
	},
	wpn_bm_gor_axe_03 = {
		unit_name = "units/weapons/enemy/wpn_bm_gor_set_01/wpn_bm_gor_axe_03",
		attachment_node_linking = AttachmentNodeLinking.ai_1h_weapon.right
	},
	wpn_bm_gor_axe_04 = {
		unit_name = "units/weapons/enemy/wpn_bm_gor_set_01/wpn_bm_gor_axe_04",
		attachment_node_linking = AttachmentNodeLinking.ai_1h_weapon.right
	},
    outfit_bm_gor_horns_01 = {
		unit_extension_template = "ai_helmet_unit",
		unit_name = "units/beings/enemies/beastmen_gor/outfits/chr_beastmen_gor_horns_01",
		attachment_node_linking = AttachmentNodeLinking.ai_helmet
	},
    outfit_bm_bestigor_arm_r_upper_01 = {
		unit_extension_template = "ai_outfit_unit",
		unit_name = "units/beings/enemies/beastmen_bestigor/outfits/chr_beastmen_bestigor_outfit_right_upperarm_01",
		attachment_node_linking = AttachmentNodeLinking.ai_outfit_r_upperarm
	},
	outfit_bm_bestigor_arm_r_upper_02 = {
		unit_extension_template = "ai_outfit_unit",
		unit_name = "units/beings/enemies/beastmen_bestigor/outfits/chr_beastmen_bestigor_outfit_right_upperarm_02",
		attachment_node_linking = AttachmentNodeLinking.ai_outfit_r_upperarm
	},
	outfit_bm_bestigor_arm_l_upper_01 = {
		unit_extension_template = "ai_outfit_unit",
		unit_name = "units/beings/enemies/beastmen_bestigor/outfits/chr_beastmen_bestigor_outfit_left_upperarm_01",
		attachment_node_linking = AttachmentNodeLinking.ai_outfit_l_upperarm
	},
	outfit_bm_bestigor_arm_l_upper_02 = {
		unit_extension_template = "ai_outfit_unit",
		unit_name = "units/beings/enemies/beastmen_bestigor/outfits/chr_beastmen_bestigor_outfit_left_upperarm_02",
		attachment_node_linking = AttachmentNodeLinking.ai_outfit_l_upperarm
	},
    outfit_bm_gor_necklace_01 = {
		unit_extension_template = "ai_outfit_unit",
		unit_name = "units/beings/enemies/beastmen_gor/outfits/chr_beastmen_gor_necklace_01",
		attachment_node_linking = AttachmentNodeLinking.ai_outfit_neck_wide
	},
	outfit_bm_gor_necklace_02 = {
		unit_extension_template = "ai_outfit_unit",
		unit_name = "units/beings/enemies/beastmen_gor/outfits/chr_beastmen_gor_necklace_02",
		attachment_node_linking = AttachmentNodeLinking.ai_outfit_neck_wide
	},
    outfit_bm_gor_belt_addon_01 = {
		unit_extension_template = "ai_outfit_unit",
		unit_name = "units/beings/enemies/beastmen_gor/outfits/chr_beastmen_gor_belt_addon_01",
		attachment_node_linking = AttachmentNodeLinking.ai_outfit_belt
	},
	outfit_bm_gor_belt_addon_02 = {
		unit_extension_template = "ai_outfit_unit",
		unit_name = "units/beings/enemies/beastmen_gor/outfits/chr_beastmen_gor_belt_addon_02",
		attachment_node_linking = AttachmentNodeLinking.ai_outfit_belt
	},
	outfit_bm_gor_belt_addon_03 = {
		unit_extension_template = "ai_outfit_unit",
		unit_name = "units/beings/enemies/beastmen_gor/outfits/chr_beastmen_gor_belt_addon_03",
		attachment_node_linking = AttachmentNodeLinking.ai_outfit_belt
	},
    outfit_bm_gor_arm_r_01 = {
		unit_extension_template = "ai_outfit_unit",
		unit_name = "units/beings/enemies/beastmen_gor/outfits/chr_beastmen_gor_outfit_right_arm_01",
		attachment_node_linking = AttachmentNodeLinking.ai_outfit_r_arm_forarm_scale
	},
	outfit_bm_gor_arm_r_02 = {
		unit_extension_template = "ai_outfit_unit",
		unit_name = "units/beings/enemies/beastmen_gor/outfits/chr_beastmen_gor_outfit_right_arm_02",
		attachment_node_linking = AttachmentNodeLinking.ai_outfit_r_arm_forarm_scale
	},
	outfit_bm_gor_arm_r_03 = {
		unit_extension_template = "ai_outfit_unit",
		unit_name = "units/beings/enemies/beastmen_gor/outfits/chr_beastmen_gor_outfit_right_arm_03",
		attachment_node_linking = AttachmentNodeLinking.ai_outfit_r_arm_forarm_scale
	},
	outfit_bm_gor_arm_l_01 = {
		unit_extension_template = "ai_outfit_unit",
		unit_name = "units/beings/enemies/beastmen_gor/outfits/chr_beastmen_gor_outfit_left_arm_01",
		attachment_node_linking = AttachmentNodeLinking.ai_outfit_l_arm_forearm_scale
	},
	outfit_bm_gor_arm_l_02 = {
		unit_extension_template = "ai_outfit_unit",
		unit_name = "units/beings/enemies/beastmen_gor/outfits/chr_beastmen_gor_outfit_left_arm_02",
		attachment_node_linking = AttachmentNodeLinking.ai_outfit_l_arm_forearm_scale
	},
	outfit_bm_gor_arm_l_03 = {
		unit_extension_template = "ai_outfit_unit",
		unit_name = "units/beings/enemies/beastmen_gor/outfits/chr_beastmen_gor_outfit_left_arm_03",
		attachment_node_linking = AttachmentNodeLinking.ai_outfit_l_arm_forearm_scale
	},
    wpn_chaos_2h_axe_1_moc = {
		drop_on_hit = true,
		unit_name = "units/weapons/enemy/wpn_chaos_set/wpn_moc_2h_axe_01",
		attachment_node_linking = AttachmentNodeLinking.ai_2h
	},
	wpn_chaos_2h_axe_2_moc = {
		drop_on_hit = true,
		unit_name = "units/weapons/enemy/wpn_chaos_set/wpn_moc_2h_axe_02",
		attachment_node_linking = AttachmentNodeLinking.ai_2h
	},
    moc_helmet_04a = {
		unit_extension_template = "ai_helmet_unit",
		unit_name = "units/beings/enemies/addons/chaos_marauder/moc_helmet_04/moc_helmet_04_a",
		attachment_node_linking = AttachmentNodeLinking.ai_helmet
	},
	moc_helmet_04b = {
		unit_extension_template = "ai_helmet_unit",
		unit_name = "units/beings/enemies/addons/chaos_marauder/moc_helmet_04/moc_helmet_04_b",
		attachment_node_linking = AttachmentNodeLinking.ai_helmet
	},
	moc_helmet_04c = {
		unit_extension_template = "ai_helmet_unit",
		unit_name = "units/beings/enemies/addons/chaos_marauder/moc_helmet_04/moc_helmet_04_c",
		attachment_node_linking = AttachmentNodeLinking.ai_helmet
	},
	moc_helmet_04d = {
		unit_extension_template = "ai_helmet_unit",
		unit_name = "units/beings/enemies/addons/chaos_marauder/moc_helmet_04/moc_helmet_04_d",
		attachment_node_linking = AttachmentNodeLinking.ai_helmet
	},
	outfit_bm_gor_horns_04 = {
		unit_extension_template = "ai_helmet_unit",
		unit_name = "units/beings/enemies/beastmen_gor/outfits/chr_beastmen_gor_horns_04",
		attachment_node_linking = AttachmentNodeLinking.ai_helmet
	},
	wpn_skaven_sword_47_right = {
		unit_name = "units/weapons/enemy/wpn_skaven_set/wpn_skaven_sword_47",
		attachment_node_linking = AttachmentNodeLinking.ai_1h_weapon.right
	},
	wpn_torch_left = {
		unit_name = "units/weapons/enemy/wpn_torch/wpn_torch",
		attachment_node_linking = AttachmentNodeLinking.ai_1h_weapon.left
	},
	wpn_torch_right = {
		unit_name = "units/weapons/enemy/wpn_torch/wpn_torch",
		attachment_node_linking = AttachmentNodeLinking.ai_1h_weapon.right
	},
	wpn_skaven_sword_01_right = {
		unit_name = "units/weapons/enemy/wpn_skaven_set/wpn_skaven_sword_01",
		attachment_node_linking = AttachmentNodeLinking.ai_1h_weapon.right
	},
}

local item_categories = {
    marauder_shield_helmet = {
        items.moc_helmet_11
    },
    mace = {
        items.wpn_moc_mace_01
    },
    berzerker_right = {
        items.wpn_moc_axe_01_right,
        items.wpn_moc_axe_02_right
    },
    berzerker_left = {
		items.wpn_moc_axe_01_left,
		items.wpn_moc_axe_02_left
	},
    axe = {
        items.wpn_chaos_2h_axe_1
    },
    two_h_axe_moc = {
		items.wpn_chaos_2h_axe_1_moc,
		items.wpn_chaos_2h_axe_2_moc
	},
	two_h_axe_moc_single = {
		items.wpn_chaos_2h_axe_2_moc
	},
    beastmen_minotaur_dual_axes_right = {
        items.wpn_beastmen_minotaur_dual_axes_right
    },
    stormvermin_one_hand_weapon_dual_right = {
		items.wpn_skaven_sword_dual_right
	},
    stormvermin_one_hand_weapon_dual_left = {
		items.wpn_skaven_sword_dual_left
	},
    chaos_sorcerer_book = {
		items.wpn_chaos_sorcerer_book
	},
    blk_shadow_lieutenant_warrior_helmet = {
        items.woc_helmet_blk_shadow_lieutenant_01,
        items.woc_helmet_blk_shadow_lieutenant_02,
        items.woc_helmet_blk_shadow_lieutenant_03,
        items.woc_helmet_blk_shadow_lieutenant_04
    },
    beastmen_2h = {
		items.wpn_bm_bestigor_halberd_02,
		items.wpn_bm_bestigor_halberd_03,
		items.wpn_bm_bestigor_halberd_05,
		items.wpn_bm_bestigor_halberd_06
	},
    marauder_shield_back = {
        items.wpn_marauder_shield_01_back,
    },
    marauder_shield = {
        items.wpn_marauder_shield_01,
    },
    stormvermin_shield = {
		items.wpn_skaven_shield_45
	},
    shieldu = {
        items.wpn_marauder_shield_09
    },
    beastmen_1h_axe = {
        items.wpn_bm_gor_axe_01,
        items.wpn_bm_gor_axe_02,
        items.wpn_bm_gor_axe_03,
        items.wpn_bm_gor_axe_04,
    },
    beastmen_bestigor_outfit_head = {
		items.outfit_bm_gor_horns_01
	},
    beastmen_bestigor_outfit_r_arm_upper = {
		items.outfit_bm_bestigor_arm_r_upper_01,
		items.outfit_bm_bestigor_arm_r_upper_02
	},
	beastmen_bestigor_outfit_l_arm_upper = {
		items.outfit_bm_bestigor_arm_l_upper_01,
		items.outfit_bm_bestigor_arm_l_upper_02
	},
    beastmen_gor_outfit_neck = {
		items.outfit_bm_gor_necklace_01,
		items.outfit_bm_gor_necklace_02
	},
    beastmen_gor_outfit_r_arm = {
		items.outfit_bm_gor_arm_r_01,
		items.outfit_bm_gor_arm_r_02,
		items.outfit_bm_gor_arm_r_03
	},
	beastmen_gor_outfit_l_arm = {
		items.outfit_bm_gor_arm_l_01,
		items.outfit_bm_gor_arm_l_02,
		items.outfit_bm_gor_arm_l_03
	},
	beastmen_gor_belt = {
		items.outfit_bm_gor_belt_addon_01,
		items.outfit_bm_gor_belt_addon_02,
		items.outfit_bm_gor_belt_addon_03
	},
    marauder_helmet_horns = {
		items.moc_helmet_04a,
		items.moc_helmet_04b,
	},
    marauder_helmet_horns_unbroken = {
		items.moc_helmet_04a,
	},
    beastmen_standard_bearer_outfit_head = {
		items.outfit_bm_gor_horns_02
	},
    beastmen_gor_outfit_head = {
		items.outfit_bm_gor_horns_04,
	},
	stormvermin_one_hand_weapon_right = {
		items.wpn_skaven_sword_47_right
	},
	torch_left = {
		items.wpn_torch_left
	},
	torch_right = {
		items.wpn_torch_right
	},
	monk_sword_right = {
		items.wpn_skaven_sword_01_right
	}
}
local drop_reasons_shield = {
	death = true,
	shield_break = true
}
local drop_reasons_other = {
	death = true
}

for category_name, category in pairs(item_categories) do
	local drop_reasons = ((category_name == "stormvermin_shield" or category_name == "shield" or category_name == "marauder_shield") and drop_reasons_shield) or drop_reasons_other

	for i, item in ipairs(category) do
		item.drop_reasons = drop_reasons
	end
end

NewInventoryConfigurations = {}
NewInventoryConfigurations.marauder_mace_fancy = {
    enemy_hit_sound = "spear",
    anim_state_event = "to_sword",
    items = {
        item_categories.marauder_shield_helmet,
        item_categories.berzerker_right,
        item_categories.marauder_shield_back
    }
}
NewInventoryConfigurations.marauder_axe_shield = {
    enemy_hit_sound = "spear",
    anim_state_event = "to_shield",
    items = {
        item_categories.marauder_helmet_horns,
        item_categories.berzerker_right,
        item_categories.shieldu
    }
}
NewInventoryConfigurations.marauder_berzerker = {
    enemy_hit_sound = "sword",
    anim_state_event = "to_dual_wield",
    items = {
        item_categories.marauder_shield_helmet,
        item_categories.berzerker_right,
        item_categories.berzerker_left,
        item_categories.marauder_shield_back
    }
}
NewInventoryConfigurations.marauder_2h_axe = {
    enemy_hit_sound = "spear",
    anim_state_event = "to_2h_axe",
    items = {
        item_categories.marauder_helmet_horns,
        item_categories.marauder_shield_back,
		item_categories.two_h_axe_moc_single
    }
}
NewInventoryConfigurations.raider_2h_glaive = {
    enemy_hit_sound = "spear",
    anim_state_event = "to_2h_axe",
    items = {
        item_categories.marauder_helmet_horns_unbroken,
        item_categories.beastmen_2h,
        item_categories.marauder_shield_back
    }
}
NewInventoryConfigurations.armoured_gor = {
    enemy_hit_sound = "sword",
    anim_state_event = "to_sword",
    items = {
        item_categories.beastmen_1h,
        item_categories.beastmen_bestigor_outfit_head,
        item_categories.beastmen_bestigor_outfit_r_arm_upper,
        item_categories.beastmen_bestigor_outfit_l_arm_upper,
        item_categories.beastmen_gor_outfit_neck,
        item_categories.beastmen_gor_belt,
        item_categories.beastmen_gor_outfit_r_arm,
        item_categories.beastmen_gor_outfit_l_arm,
    }
}
NewInventoryConfigurations.armoured_gor_axe = {
    enemy_hit_sound = "sword",
    anim_state_event = "to_sword",
    items = {
        item_categories.beastmen_1h_axe,
        item_categories.beastmen_bestigor_outfit_head,
        item_categories.beastmen_bestigor_outfit_r_arm_upper,
        item_categories.beastmen_bestigor_outfit_l_arm_upper,
        item_categories.beastmen_gor_outfit_neck,
        item_categories.beastmen_gor_belt,
        item_categories.beastmen_gor_outfit_r_arm,
        item_categories.beastmen_gor_outfit_l_arm,
    }
}
NewInventoryConfigurations.armoured_halberd_gor = {
    enemy_hit_sound = "spear",
    anim_state_event = "to_halberd",
    items = {
        item_categories.beastmen_2h,
        item_categories.beastmen_bestigor_outfit_head,
        item_categories.beastmen_bestigor_outfit_r_arm_upper,
        item_categories.beastmen_bestigor_outfit_l_arm_upper,
        item_categories.beastmen_gor_outfit_neck,
        item_categories.beastmen_gor_belt,
        item_categories.beastmen_gor_outfit_r_arm,
        item_categories.beastmen_gor_outfit_l_arm,
    }
}
NewInventoryConfigurations.axe_bestigor = {
    enemy_hit_sound = "spear",
    anim_state_event = "to_halberd",
    equip_anim = "equip_halberd",
    items = {
        item_categories.axe,
        item_categories.beastmen_gor_outfit_head,
        item_categories.beastmen_bestigor_outfit_r_arm_upper,
        item_categories.beastmen_bestigor_outfit_l_arm_upper
    }
}
NewInventoryConfigurations.warrior_axe_shadow = {
    enemy_hit_sound = "spear",
    anim_state_event = "to_spear",
    items = {
        item_categories.axe,
        item_categories.blk_shadow_lieutenant_warrior_helmet
    }
}
NewInventoryConfigurations.shield_raider = {
    enemy_hit_sound = "sword",
    anim_state_event = "to_shield",
    items = {
        item_categories.mace,
        item_categories.marauder_shield
    }
}
NewInventoryConfigurations.dual_wield_monk_torch = {
    enemy_hit_sound = "sword",
    anim_state_event = "to_sword",
    items = {
        item_categories.torch_right,
        item_categories.torch_left
    }
}
NewInventoryConfigurations.dual_wield_monk = {
    enemy_hit_sound = "sword",
    anim_state_event = "to_sword",
    items = {
        item_categories.stormvermin_one_hand_weapon_dual_right,
        item_categories.stormvermin_one_hand_weapon_dual_left
    }
}

NewAIInventoryTemplates = {}
local melee_configurations = {
	"sword",
	"spear"
}

NewAIInventoryTemplates.random_melee = function ()
	local index = math.random(1, #melee_configurations)
	local config_name = melee_configurations[index]

	return config_name
end

NewAIInventoryTemplates.default = function ()
	return NewAIInventoryTemplates.random_melee()
end


for category_name, category in pairs(item_categories) do
	category.count = #category
	category.name = category_name
end

for config_name, config in pairs(NewInventoryConfigurations) do
	config.items_n = config.items and #config.items

	assert(NewAIInventoryTemplates[config_name] == nil, "Can't override configuration based templates")

	NewAIInventoryTemplates[config_name] = function ()
		return config_name
	end

	local multiple_configurations = config.multiple_configurations

	if multiple_configurations then
		config.config_lookup = {}

		for i = 1, #multiple_configurations, 1 do
			local config_name = multiple_configurations[i]
			config.config_lookup[config_name] = i
		end
	end
end

for key, _ in pairs(NewInventoryConfigurations) do
    i = #NetworkLookup.ai_inventory + 1
    NetworkLookup.ai_inventory[i] = key
    NetworkLookup.ai_inventory[key] = i
end

table.merge_recursive(InventoryConfigurations, NewInventoryConfigurations)
table.merge_recursive(AIInventoryTemplates, NewAIInventoryTemplates)

Managers.package:load("resource_packages/breeds/skaven_clan_rat", "global")
Managers.package:load("resource_packages/breeds/chaos_marauder_with_shield", "global")
Managers.package:load("resource_packages/breeds/beastmen_bestigor", "global")
Managers.package:load("resource_packages/breeds/beastmen_gor", "global")
Managers.package:load("resource_packages/breeds/chaos_raider", "global")
Managers.package:load("resource_packages/breeds/skaven_storm_vermin", "global")
Managers.package:load("resource_packages/breeds/skaven_storm_vermin_with_shield", "global")
Managers.package:load("resource_packages/breeds/skaven_plague_monk", "global")
Managers.package:load("resource_packages/breeds/chaos_marauder", "global")
Managers.package:load("resource_packages/breeds/chaos_berzerker", "global")
Managers.package:load("resource_packages/breeds/chaos_warrior", "global")
Managers.package:load("resource_packages/breeds/skaven_storm_vermin_warlord", "global")
Managers.package:load("resource_packages/breeds/ethereal_skeleton_with_hammer", "global")
Managers.package:load("resource_packages/breeds/ethereal_skeleton_with_shield", "global")

EnemyPackageLoaderSettings.alias_to_breed.skaven_dummy_slave = "skaven_storm_vermin_with_shield"

local alias_to_breed = EnemyPackageLoaderSettings.alias_to_breed
local breed_to_aliases = EnemyPackageLoaderSettings.breed_to_aliases

for alias, breed_name in pairs(alias_to_breed) do
	if not breed_to_aliases[breed_name] then
		breed_to_aliases[breed_name] = {}
	end

	local aliases = breed_to_aliases[breed_name]
	aliases[#aliases + 1] = alias
end

local difficulty_start = 5 - 1 --Just change Legend and up values
local difficulties = 8 - difficulty_start --How many times to do

--White Shielded Stormvermin
Breeds.skaven_dummy_slave = table.create_copy(Breeds.skaven_dummy_slave, Breeds.skaven_storm_vermin_with_shield)
BreedActions.skaven_dummy_slave = {}
BreedActions.skaven_dummy_slave = table.create_copy(BreedActions.skaven_dummy_slave, BreedActions.skaven_storm_vermin_with_shield)
Breeds.skaven_dummy_slave.name = "skaven_dummy_slave"
Breeds.skaven_dummy_slave.bloodlust_health = BreedTweaks.bloodlust_health.beastmen_elite
Breeds.skaven_dummy_slave.primary_armor_category = 6
Breeds.skaven_dummy_slave.size_variation_range = { 1.23, 1.25 }
Breeds.skaven_dummy_slave.max_health = BreedTweaks.max_health.bestigor
Breeds.skaven_dummy_slave.detection_radius = math.huge

--Axe Shield Marauder
Breeds.skaven_dummy_clan_rat = table.create_copy(Breeds.skaven_dummy_clan_rat, Breeds.chaos_marauder_with_shield)
BreedActions.skaven_dummy_clan_rat = {}
BreedActions.skaven_dummy_clan_rat = table.create_copy(BreedActions.skaven_dummy_clan_rat, BreedActions.chaos_marauder_with_shield)
Breeds.skaven_dummy_clan_rat.name = "skaven_dummy_clan_rat"
Breeds.skaven_dummy_clan_rat.default_inventory_template = "marauder_axe_shield"
Breeds.skaven_dummy_clan_rat.behavior = "shield_marauder"
Breeds.skaven_dummy_clan_rat.horde_behavior = "shield_marauder"
Breeds.skaven_dummy_clan_rat.poison_resistance = 100
Breeds.skaven_dummy_clan_rat.armor_category = 2
Breeds.skaven_dummy_clan_rat.unbreakable_shield = true
Breeds.skaven_dummy_clan_rat.max_health = BreedTweaks.max_health.ratling_gunner
Breeds.skaven_dummy_clan_rat.unit_template = "ai_unit_shield_marauder"

--Big axe marauder
Breeds.skaven_clan_rat_tutorial = table.create_copy(Breeds.skaven_clan_rat_tutorial, Breeds.chaos_marauder)
BreedActions.skaven_clan_rat_tutorial = {}
BreedActions.skaven_clan_rat_tutorial = table.create_copy(BreedActions.skaven_clan_rat_tutorial, BreedActions.chaos_raider)
BreedActions.skaven_clan_rat_tutorial.running_attack.difficulty_damage = BreedTweaks.difficulty_damage.elite_attack_quick
BreedActions.skaven_clan_rat_tutorial.special_attack_sweep.difficulty_damage = BreedTweaks.difficulty_damage.elite_attack_quick
BreedActions.skaven_clan_rat_tutorial.special_attack_cleave.difficulty_damage = BreedTweaks.difficulty_damage.elite_attack_quick
Breeds.skaven_clan_rat_tutorial.name = "skaven_clan_rat_tutorial"
Breeds.skaven_clan_rat_tutorial.default_inventory_template = "marauder_2h_axe"
Breeds.skaven_clan_rat_tutorial.poison_resistance = 100
Breeds.skaven_clan_rat_tutorial.armor_category = 2
Breeds.skaven_clan_rat_tutorial.behavior = "raider"
Breeds.skaven_clan_rat_tutorial.horde_behavior = "raider"
Breeds.skaven_clan_rat_tutorial.aoe_radius = 0.4
Breeds.skaven_clan_rat_tutorial.aoe_height = 1.7
Breeds.skaven_clan_rat_tutorial.weapon_reach = 2
Breeds.skaven_clan_rat_tutorial.smart_targeting_height_multiplier = 2.5
Breeds.skaven_clan_rat_tutorial.unit_template = "ai_unit_chaos_warrior"
Breeds.skaven_clan_rat_tutorial.has_running_attack = true
Breeds.skaven_clan_rat_tutorial.radius = 2

--Armoured Berzerker Marauder
Breeds.chaos_marauder_tutorial.default_inventory_template = "marauder_berzerker"
Breeds.chaos_marauder_tutorial.behavior = "berzerker"
Breeds.chaos_marauder_tutorial.horde_behavior = "berzerker"
Breeds.chaos_marauder_tutorial.poison_resistance = 100
Breeds.chaos_marauder_tutorial.slot_template = "chaos_elite"
Breeds.chaos_marauder_tutorial.elite = true
Breeds.chaos_marauder_tutorial.using_combo = true
Breeds.chaos_marauder_tutorial.perception_previous_attacker_stickyness_value = 0
Breeds.chaos_marauder_tutorial.dodge_timer = 0.15
Breeds.chaos_marauder_tutorial.threat_value = 5
Breeds.chaos_marauder.size_variation_range = { 0.95, 1.05 }
Breeds.chaos_marauder_tutorial.armor_category = 2
Breeds.chaos_marauder_tutorial.size_variation_range = { 1.075, 1.075 }
Breeds.chaos_marauder_tutorial.berzerking_stagger_time = 0.75
Breeds.chaos_marauder_tutorial.bloodlust_health = BreedTweaks.bloodlust_health.chaos_elite
Breeds.chaos_marauder_tutorial.elite = true
Breeds.chaos_marauder_tutorial.unit_template = "ai_unit_berzerker"
Breeds.chaos_marauder_tutorial.killfeed_fold_with = "chaos_berzerker"
Breeds.chaos_marauder_tutorial.awards_positive_reinforcement_message = true
Breeds.chaos_marauder_tutorial.stagger_threshold_heavy = 3
Breeds.chaos_marauder_tutorial.stagger_threshold_medium = 1.5
Breeds.chaos_marauder_tutorial.stagger_threshold_light = 0.75
Breeds.chaos_marauder_tutorial.weapon_reach = 1.75

--Big Nurgle Mauler
Breeds.chaos_raider_tutorial.default_inventory_template = "raider_2h_glaive"
Breeds.chaos_raider_tutorial.behavior = "raider"
Breeds.chaos_raider_tutorial.horde_behavior = "raider"
Breeds.chaos_raider_tutorial.debug_spawn_category = nil
Breeds.chaos_raider_tutorial.armor_category = 3
Breeds.chaos_raider_tutorial.walk_speed = 2
Breeds.chaos_raider_tutorial.run_speed = 3.2
Breeds.chaos_raider_tutorial.size_variation_range = {1.31, 1.325}
Breeds.chaos_raider_tutorial.max_health = health_steps(60, elite_health_step_multipliers)
Breeds.chaos_raider_tutorial.detection_radius = math.huge
Breeds.chaos_raider_tutorial.proximity_system_check = true
Breeds.chaos_raider_tutorial.perception_continuous = "perception_continuous_keep_target"
Breeds.chaos_raider_tutorial.enter_walk_distance = 10

--Big Nurgle Bestigor
PlayerUnitStatusSettings.fatigue_point_costs.blocked_charge = 10
Breeds.beastmen_bestigor_dummy.default_inventory_template = "axe_bestigor"
Breeds.beastmen_bestigor_dummy.behavior = "bestigor"
Breeds.beastmen_bestigor_dummy.horde_behavior = "bestigor"
Breeds.beastmen_bestigor_dummy.debug_spawn_category = nil
Breeds.beastmen_bestigor_dummy.perception = "perception_regular_update_aggro"
Breeds.beastmen_bestigor_dummy.max_health = BreedTweaks.max_health.raider
Breeds.beastmen_bestigor_dummy.bloodlust_health = BreedTweaks.bloodlust_health.chaos_warrior
Breeds.beastmen_bestigor_dummy.run_speed = 4.2
Breeds.beastmen_bestigor_dummy.walk_speed = 2.4
Breeds.beastmen_bestigor_dummy.vortexable = false
Breeds.beastmen_bestigor_dummy.threat_value = 10
Breeds.beastmen_bestigor_dummy.size_variation_range = {
    1.425,
    1.43
}

--Gor
BreedActions.beastmen_gor.headbutt_attack.dodge_window_start = BreedTweaks.dodge_windows.normal_attack

--Pimped up Gor
Breeds.beastmen_gor_dummy.behavior = "gor"
Breeds.beastmen_gor_dummy.horde_behavior = "gor"
Breeds.beastmen_gor_dummy.debug_spawn_category = "nil"
Breeds.beastmen_gor_dummy.perception = "perception_regular"
Breeds.beastmen_gor_dummy.default_inventory_template = "armoured_gor_axe"
Breeds.beastmen_gor_dummy.wield_inventory_on_spawn = nil
Breeds.beastmen_gor_dummy.is_always_spawnable = true
Breeds.beastmen_gor_dummy.size_variation_range = {
    1.25,
	1.255
}
Breeds.beastmen_gor_dummy.max_health = BreedTweaks.max_health.marauder
Breeds.beastmen_gor_dummy.bloodlust_health = BreedTweaks.bloodlust_health.chaos_roamer
Breeds.beastmen_gor_dummy.hit_mass_counts = BreedTweaks.hit_mass_counts.marauder

Breeds.beastmen_ungor_archer = table.create_copy(Breeds.beastmen_ungor_archer, Breeds.beastmen_ungor)

Breeds.ethereal_skeleton_with_hammer.bloodlust_health = 5
Breeds.ethereal_skeleton_with_hammer.max_health = BreedTweaks.max_health.stormvermin
Breeds.ethereal_skeleton_with_hammer.hit_mass_count = 3
Breeds.ethereal_skeleton_with_hammer.size_variation_range = { 1.1, 1,2 }

local function enemy_unit_common_extractor(unit, game_session, game_object_id)
	local breed_name_id = GameSession.game_object_field(game_session, game_object_id, "breed_name")
	local breed_name = NetworkLookup.breeds[breed_name_id]
	local breed = Breeds[breed_name]

	Unit.set_data(unit, "breed", breed)

	local level_settings = LevelSettings[Managers.state.game_mode:level_key()]
	local climate_type = level_settings.climate_type or "default"

	Unit.set_flow_variable(unit, "climate_type", climate_type)
	Unit.flow_event(unit, "climate_type_set")

	local side_id = GameSession.game_object_field(game_session, game_object_id, "side_id")

	return breed, breed_name, side_id
end

local breed_inventory_pairs = {}

for breed_name, breed in pairs(Breeds) do
    breed_inventory_pairs[breed_name] = breed.default_inventory_template
end

mod:hook_origin(UnitSpawner, "spawn_unit_from_game_object", function (self, go_id, owner_id, go_template)
   local unit = self:create_unit_from_gameobject_function(self.game_session, go_id, go_template)

	NetworkUnit.add_unit(unit)
	NetworkUnit.set_is_husk_unit(unit, true)

	local go_type = go_template.go_type

	self.unit_storage:add_unit_info(unit, go_id, go_type, owner_id)

	local go_extract_functor = self.gameobject_extractors[go_type]

	fassert(type(go_extract_functor) == "function")

	local unit_template_name, extension_init_data = go_extract_functor(self.game_session, go_id, owner_id, unit, self.gameobject_functor_context)
	local is_husk = true

    if go_type == "ai_unit_with_inventory_and_target" or go_type == "ai_unit_with_inventory_and_shield_and_target" or go_type == "ai_unit_beastmen_bestigor" or go_type == "ai_unit_plague_monk" or go_type == "ai_unit_shield_vermin" then
        if self.game_session.game_object_field(self.game_session, go_id, "inventory_configuration") then
            local breed, breed_name, side_id = enemy_unit_common_extractor(unit, self.game_session, go_id)
            if extension_init_data then
                extension_init_data.ai_inventory_system.inventory_configuration_name = breed_inventory_pairs[breed_name]
            end
        end
    end

	self:create_unit_extensions(self.world, unit, unit_template_name, extension_init_data, is_husk)
end)

ScoreboardHelper.scoreboard_topic_stats[1].stat_types = {
	{
		"kills_per_breed",
		"skaven_storm_vermin"
	},
	{
		"kills_per_breed",
		"skaven_storm_vermin_commander"
	},
	{
		"kills_per_breed",
		"skaven_storm_vermin_with_shield"
	},
	{
		"kills_per_breed",
		"skaven_plague_monk"
	},
	{
		"kills_per_breed",
		"chaos_warrior"
	},
	{
		"kills_per_breed",
		"chaos_berzerker"
	},
	{
		"kills_per_breed",
		"chaos_raider"
	},
	{
		"kills_per_breed",
		"beastmen_bestigor"
	},
	{
		"kills_per_breed",
		"chaos_raider_tutorial"
	},
	{
		"kills_per_breed",
		"beastmen_bestigor_dummy"
	},
	{
		"kills_per_breed",
		"chaos_marauder_tutorial"
	},
	{
		"kills_per_breed",
		"skaven_clan_rat_tutorial"
	},
	{
		"kills_per_breed",
		"skaven_dummy_slave"
	},
	{
		"kills_per_breed",
		"skaven_dummy_clan_rat"
	}
}

UISettings.breed_textures.chaos_raider_tutorial = "unit_frame_portrait_enemy_raider"
UISettings.breed_textures.beastmen_bestigor_dummy = "unit_frame_portrait_enemy_bestigor"
UISettings.breed_textures.chaos_marauder_tutorial = "unit_frame_portrait_enemy_savage"
UISettings.breed_textures.skaven_clan_rat_tutorial = "unit_frame_portrait_enemy_plague_monk"
UISettings.breed_textures.skaven_dummy_slave = "unit_frame_portrait_enemy_stormvermin"

--Stagger
for i=1, difficulties do
	local i = i + difficulty_start
	Breeds.beastmen_gor_dummy.diff_stagger_resist[i] = 28
end
for i=1, difficulties do
	local i = i + difficulty_start
	Breeds.beastmen_bestigor_dummy.diff_stagger_resist[i] = 50
end
for i=1, difficulties do
	local i = i + difficulty_start
	Breeds.chaos_raider_tutorial.diff_stagger_resist[i] = 50
end
		for i=1, difficulties do
	local i = i + difficulty_start
	Breeds.chaos_marauder_tutorial.diff_stagger_resist[i] = 22
end
for i=1, difficulties do
	local i = i + difficulty_start
	Breeds.skaven_dummy_clan_rat.diff_stagger_resist[i] = 28
end
for i=1, difficulties do
	local i = i + difficulty_start
	Breeds.skaven_dummy_slave.diff_stagger_resist[i] = 40
end
for i=1, difficulties do
	local i = i + difficulty_start
	Breeds.skaven_clan_rat_tutorial.diff_stagger_resist[i] = 35
end
for i=1, difficulties do
	local i = i + difficulty_start
	Breeds.ethereal_skeleton_with_shield.diff_stagger_resist[i] = 30
end
for i=1, difficulties do
	local i = i + difficulty_start
	Breeds.ethereal_skeleton_with_hammer.diff_stagger_resist[i] = 40
end

