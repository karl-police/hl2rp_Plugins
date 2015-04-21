local CLASS = Clockwork.class:New("Headcrab")

CLASS.color = Color(217, 203, 46, 255);
CLASS.wages = false;
CLASS.factions = {FACTION_HEADCRAB};
CLASS.description = "A creature from Xen. Headcrabs can infect you into a zombie."
CLASS.defaultPhysDesc = "A mysterious creature, it has 4 legs."

CLASS_HEADCRAB = CLASS:Register();
