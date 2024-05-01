--[[
This file is part of downrank.
downrank is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
downrank is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
You should have received a copy of the GNU General Public License along with downrank. If not, see <https://www.gnu.org/licenses/>. 
]]--


tableofstuff = {
		--whm
		--['Cure']		=	{"Cure V", "Cure IV", "Cure III", "Cure II", "Cure"},
		['Curaga']		=	{"Curaga IV", "Curaga III", "Curaga II", "Curaga"},
		['Raise']		=	{"Raise III", "Raise II", "Raise"},
		['Reraise']		=	{"Reraise III", "Reraise II", "Reraise"},
		['Protect']		=	{"Protect IV", "Protect III", "Protect II", "Protect"},
		['Shell']		=	{"Shell IV", "Shell III", "Shell II", "Shell"},
		['Protectra']	=	{"Protectra V", "Protectra IV", "Protectra III", "Protectra II", "Protectra"},
		['Shellra']		=	{"Shellra V", "Shellra IV", "Shellra III", "Shellra II", "Shellra"},
		['Regen']		=	{"Regen III", "Regen II", "Regen"},
		['Banish']		=	{"Banish III", "Banish II", "Banish"},

		--blm
		['Stone']		=	{"Stone IV", "Stone III", "Stone II", "Stone"},
		['Water']		=	{"Water IV", "Water III", "Water II", "Water"},
		['Aero']		=	{"Aero IV", "Aero III", "Aero II", "Aero"},
		['Fire']		=	{"Fire IV", "Fire III", "Fire II", "Fire"},
		['Blizzard']	=	{"Blizzard IV", "Blizzard III", "Blizzard II", "Blizzard"},
		['Thunder']		=	{"Thunder IV", "Thunder III", "Thunder II", "Thunder"},
		['Stonega']		=	{"Stonega III", "Stonega II", "Stonega"},
		['Waterga']		=	{"Waterga III", "Waterga II", "Waterga"},
		['Aeroga']		=	{"Aeroga III", "Aeroga II", "Aeroga"},
		['Firaga']		=	{"Firaga III", "Firaga II", "Firaga"},
		['Blizzaga']	=	{"Blizzaga III", "Blizzaga II", "Blizzaga"},
		['Thundaga']	=	{"Thundaga III", "Thundaga II", "Thundaga"},
		['Sleep']		=	{"Sleep II", "Sleep"},
		['Sleepga']		=	{"Sleepga II", "Sleepga"},
		--['Quake']		=	{"Quake II", "Quake"},
		--['Flood']		=	{"Flood II", "Flood"},
		--['Tornado']	=	{"Tornado II", "Tornado"},
		--['Flare']		=	{"Flare II", "Flare"},
		--['Freeze']	=	{"Freeze II", "Freeze"},
		--['Burst']		=	{"Burst II", "Burst"},
		

		--rdm
		['Dia']			=	{"Dia III", "Dia II", "Dia"},
		['Bio']			=	{"Bio III", "Bio II", "Bio"},
		['Poison']		=	{"Poison II", "Poison"},
		--['Phalanx']	=	{"Phalanx II", "Phalanx"}
		--['Blind']		=	{"Blind II", "Blind"},
		--['Paralyze']	=	{"Paralyze II", "Paralyze"},
		--['Slow']		=	{"Slow II", "Slow"}

		--smn
		--tbd fuq u

		--drk
		['Drain']		=	{"Drain II", "Drain"},

		--brd
		['Minuet']		=	{"Valor Minuet IV", "Valor Minuet III", "Valor Minuet II", "Valor Minuet"},
		['Minne']		=	{"Knight's Minne IV", "Knight's Minne III", "Knight's Minne II", "Knight's Minne"},
		['March']		=	{"Victory March", "Advancing March"},
		['Madrigal']	=	{"Blade Madrigal", "Sword Madrigal"},
		['Prelude']		=	{"Archer's Prelude", "Hunter's Prelude"},
		['Mambo']		=	{"Dragonfoe Mambo", "Sheepfoe Mambo"},
		['Mazurka']		=	{"Chocobo Mazurka", "Raptor Mazurka"},
		['Ballad']		=	{"Mage's Ballad II", "Mage's Ballad"},
		['Paeon']		=	{"Army's Paeon V", "Army's Paeon IV", "Army's Paeon III", "Army's Paeon II", "Army's Paeon"},
		['Elegy']		=	{"Carnage Elegy", "Battlefield Elegy"},
		['Requiem']		=	{"Foe Requiem VI", "Foe Requiem V", "Foe Requiem IV", "Foe Requiem III", "Foe Requiem II", "Foe Requiem"},

		--nin
		['Utsusemi']	=	{"Utsusemi: Ni", "Utsusemi: Ichi"}
		--tbd

	}

	targetindextable = {
		["me"]  = {0},
		["p0"]  = {0},		
		["p1"]  = {1},
		["p2"]  = {2},
		["p3"]  = {3},
		["p4"]  = {4},
		["p5"]  = {5},
		["a10"] = {6},
		["a11"] = {7},
		["a12"] = {8},
		["a13"] = {9},
		["a14"] = {10},
		["a15"] = {11},
		["a20"] = {12},
		["a21"] = {13},
		["a22"] = {14},
		["a23"] = {15},
		["a24"] = {16},
		["a25"] = {17},
		["t"]	= {nil}
	}