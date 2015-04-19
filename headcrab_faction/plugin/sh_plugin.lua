local PLUGIN = PLUGIN;

Clockwork.kernel:IncludePrefixed("sv_plugin.lua");
Clockwork.kernel:IncludePrefixed("sv_hooks.lua");


function PLUGIN:IsHeadcrabFaction(faction)
	return (faction == FACTION_HEADCRAB);
end;
