local FACTION = Clockwork.faction:New("Headcrab")
FACTION.whitelist = true;
FACTION.useFullName = true;
FACTION.models = {
		male = {"models/Lamarr.mdl"},
		       {"models/headcrab.mdl"},
		       {"models/headcrabblack.mdl"}
		female = {"models/Lamarr.mdl"},
		       {"models/headcrab.mdl"},
		       {"models/headcrabblack.mdl"}
};

--Called when a player's model should be assigned to the faction.
function FACTION:GetModel(player, character)
	if(character.gender == GENDER_MALE) then
		return self.models.male[1];
	else
		return self.models.female[1];
	end;
end;

FACTION_HEADCRAB = FACTION:Register();
