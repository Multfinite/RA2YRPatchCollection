This is just a set of RA2YR balance edits: nerfs, buffs, edits, modes

### Namings

> edit_* - major changes of game logic;
buff_* - power increase of something;
fix_* - fix or nerf something;
mode_* - the whole mode, even a mod.

### How to use

First of all, you need the ini merge utility (and briefings gen maybe). Read readme.md for them.
> https://github.com/Multfinite/INIMerger
https://github.com/Multfinite/RA2BriefingGen

Note: folder structure:
> /Rules - set of patches in this directory
/Gamemodes - assembly results
/Maps - folder with maps
/Tools - folder with tools & utilities

Then, determine which patches you want to use. Next i will use my invasion 'gamemode' set.

After that, you should assembly a gamemode from several patches. Run commands from powershall (or unix shall).

> "./Tools/INIMerger/INIMerger" -tron Gamemodes/gm_invasion.ini Rules/fix_bfrt.ini Rules/fix_grand_cannon.ini Rules/fix_siege_chopper.ini Rules/edit_repairable_bunkers.ini Rules/edit_paradrop.ini Rules/edit_transport_zeppelin_for_scripts.ini Rules/edit_secret_lab.ini Rules/edit_outpust_allow_mcv_conopt.ini Rules/edit_ext_occupy.ini Rules/buff_flags_vision.ini Rules/edit_transport_via_factory.ini Rules/edit_c4_tech.ini Rules/edit_normandy_control_points.ini Rules/buff_paradrop.ini Rules/buff_tesla_coil.ini Rules/buff_v3.ini Rules/buff_transport.ini
"./Tools/INIMerger/INIMerger" -tron Gamemodes/gm_invasion_fleet_patch.ini Gamemodes/gm_invasion.ini Rules/edit_fleet_patch.ini

So, we have a 'gamemode' configuration. The following step is map injection.

> "./Tools/INIMerger/INIMerger" "Maps/My/[8] Normandy v2.1.2 YR.map" "Maps/My/[8] Normandy v2.1.2 clean.map" "Gamemode/gm_invasion.ini"
"./Tools/INIMerger/INIMerger" "Maps/My/[8] Normandy v2.1.2 YR Fleet Patch.map" "Maps/My/[8] Normandy v2.1.2 clean.map" "Gamemode/gm_invasion_fleet_patch.ini"

At some point you want to differentiate map files with name, which indecates which modes used in map and autogenerate briefings with patch descriptions.
So, you can. Use BriefingsGen:
> Note: map name must include %MODES% placeholder (or nothing will be replaced). 
Note 2: also, you need to write briefing file for patches and maybe naming file for your map. Each file can be empty to perform nothing.  

> "./Tools/BriefingGen/BriefingGen" "Maps/My/[8] Normandy v2.1.2 YR.map" "Maps/My/[8] Normandy v2.1.2 YR.map" "Rules/briefings.ini" "Maps/My/NormandyNaming.ini"
"./Tools/BriefingGen/BriefingGen" "Maps/My/[8] Normandy v2.1.2 YR Fleet Patch.map" "Maps/My/[8] Normandy v2.1.2 YR Fleet Patch.map" "Rules/briefings.ini" "Maps/My/NormandyNaming.ini"