local FACTION = Clockwork.faction:New("Stalker")
FACTION.whitelist = true;
FACTION.useFullName = true;
FACTION.models = {
		male = {"models/stalker.mdl"},
		female = {"models/stalker.mdl"}
};

--Called when a player's model should be assigned to the faction.
function FACTION:GetModel(player, character)
	if(character.gender == GENDER_MALE) then
		return self.models.male[1];
	else
		return self.models.female[1];
	end;
end;

FACTION_STALKER = FACTION:Register();
