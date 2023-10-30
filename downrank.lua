--[[

	downrank (c) 2023 StrPz@GitHub

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/>. 
]]--
require('tables')
require('common')
require('ffxi.recast')


_addon.author = 'Peasy@Eden';
_addon.name = 'downrank';
_addon.version = 'v0.420.69 Public Paid Alpha Test With Microtransactions';

resource = AshitaCore:GetResourceManager()
data = AshitaCore:GetDataManager()
player = data:GetPlayer()

function proposedCommand(spell, target)
	local cmdresource = AshitaCore:GetChatManager()
	local buffer = '/ma \"'..spell..'\" <'..target..'>' --reforms the macro as a new macro with a new proposed spell
	--local warning = '/echo Downranking Spell!'		--the targetting is pretty scuffed and i'd like to make it better.
	cmdresource:QueueCommand(buffer, 2)		--This will kick back the entire script to the very beginning with a new spell.
	return true								--Filter out the previous command.

end

function downrank(spell, key)
	local hit = false
	for i,v in pairs(tableofstuff[key]) do		--Get the index of the current spell in the table of values.
		if v~= nil and v == spell then
			hit = true
		elseif hit and v ~= nil then			--from the index on...
			local spellid = getspellid(v)		--run comparisons on the table values to find the best answer.
			if not filtered(spellid) and maybeiknow(spellid) then
				return v
			end
		end
	end
	return nil
end


function maybeiknow(spellid)
	local kindaknow = false
	local mj = player:GetMainJob()
	local sj = player:GetSubJob()
	local mjl = player:GetMainJobLevel()
	local sjl = player:GetSubJobLevel()
	local spellinfo = resource:GetSpellById(spellid).LevelRequired
	--elseif spellinfo[sj] > sjl then return kindaknow
	--elseif spellinfo[mj] > mjl then return kindaknow
	if spellinfo[mj] > 0 and spellinfo[sj] > 0 then
		if spellinfo[mj] > mjl then return kindaknow end		--In the event mainjob and subjob share a spell to be cast and
	elseif spellinfo[mj] > mjl then return kindaknow 			-- one meets the requirement and the other does not, falling through.
	elseif spellinfo[sj] > sjl then return kindaknow end
	kindaknow = player:HasSpell(spellid)						--HasSpell was what failed with wrong spellids from GetSpellByName
	return kindaknow
end

function filtered(spellid)
	local timer = ashita.ffxi.recast.get_spell_recast_by_index(spellid) 
	if timer > 0 then
		return true
	end
	return false
end

function parsespell(spell, spellid)
	local key = nil
	local mj = player:GetMainJob()
	local sj = player:GetSubJob()
	if spellid == nil then return key end									-- some1 fucking around
	local spellinfo = resource:GetSpellById(spellid).LevelRequired
	if spellinfo[mj] == -1 and spellinfo[sj] == -1 then return key end -- -1 is the value returned when mainjob and subjob are
	for i in pairs(tableofstuff) do										-- not capable of handling the spell. Can't cast, end.
		if string.find(spell, i) then
			key = i														--Iterate through table
			return key
		end
	end
end

function getspellid(spell)
	for x = 1, 1024 do
		local spellbyid = resource:GetSpellById(x)		--I do it this way because reverse lookup does not seem to work on Eden.
		if spellbyid == nil then								--BRD spellid's produce Geomancy strings. 
		elseif spellbyid.Name[0] == spell then
			return x
		end
	end
end

function getaction(command, nType)
	local key = nil
	local doiknow = false
	local proposedSpell = nil		
	local spellid = nil
	if string.find(command, "/ma") then
		local spell = string.match(command, [[/ma%s+"([^"]+)]]) 		-- Grabs the spell and...
		local target = string.match(command, [[/ma%s+".*"%s+<([^>]+)]])		--Grabs the target.
		if target == nil then return false end									--If spell cast from menu, fall through.
		spellid = getspellid(spell)							--Get the spell id using the string...
		key = parsespell(spell, spellid)					--Key for my k:v dictionary "tables.lua"
		if key == nil then return false end					--Unsupported spell, fall through.
		doiknow = maybeiknow(spellid)						--Do I not know the spell for the right reasons?
		if not doiknow then									--Don't know spell, continue
			proposedSpell = downrank(spell, key)			--Call downrank to fetch a new proposed spell from the table.
			if proposedSpell == nil then					--Reached end of table, fall through.
				return false
			end
			return proposedCommand(proposedSpell, target)	--Call proposed command, which always returns true
		else
			if filtered(spellid) then						--Call filtered to see if the spell is on cd.
				proposedSpell = downrank(spell, key)
				if proposedSpell == nil then
					return false
				end
				return proposedCommand(proposedSpell, target)
			end
		end
	end
	return false
end

ashita.register_event('command', getaction) -- main 