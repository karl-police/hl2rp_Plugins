local PLUGIN = PLUGIN;

local COMMAND = Clockwork.command:New("Infect");
COMMAND.tip = "Infects the peoples, if they are near to you.";
COMMAND.text = "<string>";
COMMAND.flags = bit.bor(CMD_DEFAULT, CMD_DEATHCODE, CMD_FALLENOVER);
COMMAND.arguments = 1;

	 


-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
    if(PLUGIN:IsHeadcrabFaction(player:GetFaction())) then
	    if (string.find(player:GetModel(), "models/Lamarr.mdl"))  then	
        for k, v in ipairs(player.GetAll()) do
        if (player:GetPos():Distance(v:GetPos()) <= 3) then
        v:SetModel("models/Zombie/Classic.mdl")
		    v:EmitSound("npc/headcrab/headbite.wav", 60);
            end
        end
	else
		Clockwork.player:Notify("You're not an Headcrab!")	
    end
end	
    elseif(PLUGIN:IsHeadcrabFaction(player:GetFaction())) then
        if (string.find(player:GetModel(), "models/headcrab.mdl"))  then	
		for k, v in ipairs(player.GetAll()) do
		if (player:GetPos():Distance(v:GetPos()) <= 3) then
		v:SetModel("models/Zombie/Fast.mdl")
		    v:EmitSound("npc/headcrab_fast/headbite.wav", 60);
            end
        end
	else
		Clockwork.player:Notify("You're not an Fast Headcrab!")
    end
	
	elseif(PLUGIN:IsHeadcrabFaction(player:GetFaction())) then
        if (string.find(player:GetModel(), "models/headcrabblack.mdl"))  then	
		for k, v in ipairs(player.GetAll()) do
		if (player:GetPos():Distance(v:GetPos()) <= 3) then
		v:SetModel("models/Zombie/Poison.mdl")
		    v:EmitSound("npc/headcrab_poison/ph_poisonbite1.wav", 60);
            end;
        end;
	else
		Clockwork.player:Notify("You're not an Poison Headcrab!")
    end;
end;

COMMAND:Register();
