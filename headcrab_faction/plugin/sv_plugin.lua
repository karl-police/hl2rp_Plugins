local PLUGIN = PLUGIN

-- A function to check if a player is an Headcrab.
function PLUGIN:PlayerIsHeadcrab(player)
	if (IsValid(player) and player:GetCharacter()) then
		local faction = player:GetFaction();
		
		if (PLUGIN:IsHeadcrabFaction(faction)) then
			return true;
		else
			return false;
		end;
	end;
end;
