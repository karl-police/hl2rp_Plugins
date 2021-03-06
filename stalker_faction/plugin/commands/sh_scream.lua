local PLUGIN = PLUGIN;

local COMMAND = Clockwork.command:New("Scream");
COMMAND.tip = "Makes you scream.";
COMMAND.flags = bit.bor(CMD_DEFAULT, CMD_DEATHCODE, CMD_FALLENOVER);

-- Called when the command has been run.
function COMMAND:OnRun(player)
	if(PLUGIN:PlayerIsStalker(player)) then
		if (string.find(model, "stalker")) then			
			player:EmitSound("npc/stalker/stalker_alert2b.wav", 60);			
	else
	Clockwork.player:Notify("You're not an Stalker!")
	end;
end;
end;


COMMAND:Register();
