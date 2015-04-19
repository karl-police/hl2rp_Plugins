local PLUGIN = PLUGIN;

local COMMAND = Clockwork.command:New("Scream");
COMMAND.tip = "Makes you scream.";
COMMAND.text = "<string>";
COMMAND.flags = bit.bor(CMD_DEFAULT, CMD_DEATHCODE, CMD_FALLENOVER);
COMMAND.arguments = 1;

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	if(PLUGIN:PlayerIsStalker(player)) then
		if (string.find(model, "stalker")) then			
			sound = "npc/stalker/stalker_alert2b.wav";			
		end;
		player:EmitSound(sound, 60);
	end;
end;
			end;
		end;
	else
		Clockwork.player:Notify("You're not an Stalker!")
	end;
end;

COMMAND:Register();
