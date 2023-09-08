#!/bin/bash

echo ${PWD}

INIMerger=`cat settings.json | jq --raw-output '.INIMerger'`
BriefingGen=`cat settings.json | jq --raw-output '.BriefingGen'`
Output=`cat settings.json | jq --raw-output '.Output'`

`mkdir -p $Output`

 cr=$'\r'
 lf=$'\n'

eval "\"${INIMerger}\" -tron \"${Output}/gm_invasion_vanilla.ini\" edit_normandy_control_points.ini"

eval "\"${INIMerger}\" -tron \"${Output}/gm_invasion.ini\" edit_proxy_mcv.ini edit_undestroyable_flags.ini edit_advanced_flags.ini edit_flags.ini edit_lowcost_infantry.ini fix_bfrt.ini fix_grand_cannon.ini fix_siege_chopper.ini edit_repairable_bunkers.ini edit_paradrop.ini edit_transport_zeppelin_for_scripts.ini edit_capturable_lax.ini edit_secret_lab.ini edit_outpust_allow_mcv_conopt.ini edit_ext_occupy.ini edit_transport_via_factory.ini edit_c4_tech.ini edit_normandy_control_points.ini buff_paradrop.ini buff_tesla_coil.ini buff_v3.ini buff_transport.ini buff_bunkers.ini"
eval "\"${INIMerger}\" -tron \"${Output}/gm_invasion_fleet_patch.ini\" \"${Output}/gm_invasion.ini\" edit_fleet_patch.ini"
eval "\"${INIMerger}\" -tron \"${Output}/gm_invasion_yss.ini\" \"${Output}/gm_invasion.ini\" mode_soviet_yuri.ini"
eval "\"${INIMerger}\" -tron \"${Output}/gm_invasion_fleet_patch_yss.ini\" \"${Output}/gm_invasion_fleet_patch.ini\" mode_soviet_yuri.ini"
eval "\"${INIMerger}\" -tron \"${Output}/gm_invasion_ra2.ini\" \"${Output}/gm_invasion.ini\" mode_ra2.ini buff_paradrop_ra2.ini"
eval "\"${INIMerger}\" -tron \"${Output}/gm_invasion_fleet_patch_ra2.ini\" \"${Output}/gm_invasion_fleet_patch.ini\" mode_ra2.ini buff_paradrop_ra2.ini"
eval "\"${INIMerger}\" -tron \"${Output}/gm_invasion_ra2plus.ini\" \"${Output}/gm_invasion.ini\" mode_ra2plus.ini buff_paradrop_ra2.ini"
eval "\"${INIMerger}\" -tron \"${Output}/gm_invasion_fleet_patch_ra2plus.ini\" \"${Output}/gm_invasion_fleet_patch.ini\" mode_ra2plus.ini"
eval "\"${INIMerger}\" -tron \"${Output}/gm_invasion_ra2plus_no_factions.ini\" \"${Output}/gm_invasion.ini\" mode_ra2plus_no_factions.ini"
eval "\"${INIMerger}\" -tron \"${Output}/gm_invasion_fleet_patch_ra2plus_no_factions.ini\" \"${Output}/gm_invasion_fleet_patch.ini\" mode_ra2plus_no_factions.ini"


echo "=======DONE======="