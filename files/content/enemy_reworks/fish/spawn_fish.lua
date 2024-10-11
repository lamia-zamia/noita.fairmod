--- @diagnostic disable: lowercase-global
function spawn_fish(x, y)
	local f = GameGetOrbCountAllTime()

	local hm_visits = tonumber(GlobalsGetValue("HOLY_MOUNTAIN_VISITS", "0")) or 0
	SetRandomSeed(x + hm_visits, y + f)

	for _ = 1, f do
		if Random(hm_visits, 50) >= 49 then
			EntityLoad("mods/noita.fairmod/files/content/enemy_reworks/fish/fish.xml", x, y)
		else
			EntityLoad("data/entities/animals/fish.xml", x, y)
		end
	end
end