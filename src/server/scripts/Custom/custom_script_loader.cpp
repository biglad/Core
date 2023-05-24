/*
 * This file is part of the TrinityCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

// This is where scripts' loading functions should be declared:


// The name of this function should match:
// void Add${NameOfDirectory}Scripts()

void AddSC_npc_voters_zone();
void AddSC_npc_renamer();
void AddSC_npc_vote_teleport();
void AddSC_NPC_TransmogDisplayVendor();
void AddSC_npc_token_shop();
void AddSC_npc_token_exchange();
void AddSC_npc_faction_class_edit();
void AddSC_npc_proff_master();
void AddSC_npc_xp_mod();
void AddSC_npc_insta_80();

void AddCustomScripts()
{
	AddSC_npc_voters_zone();
	AddSC_npc_renamer();
	AddSC_npc_vote_teleport();
    AddSC_NPC_TransmogDisplayVendor();
	AddSC_npc_token_shop();
	AddSC_npc_token_exchange();
	AddSC_npc_faction_class_edit();
	AddSC_npc_proff_master();
	AddSC_npc_xp_mod();
	AddSC_npc_insta_80();
}
