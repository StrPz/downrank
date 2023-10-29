downrank - an Ashita v3 addon that will downrank your spell macros to the next best available spell. tables.lua made with Eden in mind.

What it do: I didn't like writing a bunch of macros over different macro pages that all do similar things. (example: /ma "Valor Minuet" <me>, /ma "Valor Minuet II" <me>, ..., /ma "Valor Minuet IV" <me>) So now I write the one macro with Valor Minuet IV, and it will select the best available Valor Minuet spell (accounts for cooldowns). Naturally any macro that resolves normally works like usual. Works with level sync.

Only for spells that functionally identical. Horizontal spells that are "basically" identical not supported! Example: NIN Ele Wheel.

Missing Spells:


    SMN


    Meritied Spells (Quake II, Bio III, Phalanx II) are commented out.


    Will probably do something for "Horizontal Ranking" like NIN Ele Wheel and BLM Burn/Choke/Shock (Not in yet)


    WHM Cure line.

Use case:

    Consolidating your macros for non-critical, like-spells.

    Don't use this on WHM Cures because I commented it out and you aren't supposed to. lmao. I guess if you are plvling and doing after fight cures this is fine. Uncomment it yourself.
    
    I'm sure you can figure it out.


Installation: 

Hit the green Code Button

Select Download ZIP

Save the file.

Open downrank-main.zip

Copy the folder downrank-main to your Eden\Ashita\addons folder.

Rename downrank-main (the folder) to downrank

You should now have Eden\Ashita\addons\downrank

Get in game and type /addon load downrank.


Does it work with Ashitacast?
It should.


Report bugs and ask for features. Looking for feedback.