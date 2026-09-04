Diaper Addiction by Player begins here.

Part 1 - Calculate Diaper Addiction

To decide which number is the diaper-addiction-influence of (C - a wearthing):
	decide on 0.

To decide which number is the diaper-addiction-influence of (C - a clothing):
	if C is diaper-addiction-influencing:
		let S be 0;
		decrease S by the magic-modifier of C; [Positive magic = subtracted diaper addiction]
		decide on S;
	decide on 0.

To decide which number is the diaper addiction of the player: [How much do they enjoy using diapers?]
	if diaper lover <= 0, decide on 1;
	let B be the raw diaper addiction of the player;
	repeat with C running through worn wearthings:
		increase B by the diaper-addiction-influence of C;
	if B < 1, decide on 1;
	if B > 20, decide on 20;
	decide on B.

Part 2 - Modify Diaper Addiction

The player has a number called raw diaper addiction. The raw diaper addiction of the player is usually 1. [Min 1 Max 20]

slowDiaper is a number that varies.
To slowDiaperAddictUp (X - a number):
	let slowDiaperLimit be 1;
	if the raw diaper addiction of the player >= 7, increase slowDiaperLimit by 1;
	if the raw diaper addiction of the player >= 14, increase slowDiaperLimit by (the raw diaper addiction of the player - 12) / 2;
	if debugmode > 0, say "Slow diaper addiction threshold is [slowDiaperLimit] ticks.";
	let addictionIncreased be false;
	while X > 0:
		decrease X by 1;
		increase slowDiaper by 1;
		if debugmode > 0, say "[slowDiaper - 1] --> [slowDiaper].";
		if slowDiaper > slowDiaperLimit:
			if debugmode > 0, say "Diaper addiction increased.";
			now slowDiaper is 0;
			now addictionIncreased is true;
			DiaperAddictUp 1;
	if addictionIncreased is false, say "You [one of][or]continue to [stopping][one of]slowly[or]very gradually[purely at random] [if the diaper addiction of the player < 7]grow more [one of]accustomed to[or]tolerant of[cycling][otherwise if the diaper addiction of the player > 14]develop your obsession with[otherwise]develop an appreciation of[end if] diapers.".

To DiaperAddictUp (X - a number):
	if diaper lover > 0:
		let S be the raw diaper addiction of the player;
		SilentlyDiaperAddictUp X;
		decrease S by the raw diaper addiction of the player;
		if S < 0, say "You feel [if S < -2]much[otherwise if S is -2]significantly[otherwise]a bit[end if] [if the diaper addiction of the player >= 14]more addicted to [one of]wearing[or]using[or]waddling around in[at random] diapers[otherwise if the diaper addiction of the player >= 7]more [one of]happy[or]calm[or]relaxed[at random] about the [one of]idea[or]reality[purely at random] of [one of]using diapers all the time[or]having a weak [SlimeContainer][or]wearing nappies under your clothes[in random order][otherwise]more tolerant of [one of]being teased about looking like a baby[or]being forced to wear diapers[or]being babied[in random order][end if].".

To SilentlyDiaperAddictUp (X - a number):
	while X > 0 and diaper lover > 0:
		decrease X by 1;
		if the raw diaper addiction of the player < 20:
			increase the raw diaper addiction of the player by 1.

To DiaperAddictDown (X - a number):
	if diaper lover > 0:
		let S be the raw diaper addiction of the player;
		SilentlyDiaperAddictDown X;
		decrease S by the raw diaper addiction of the player;
		if S > 0, say "You feel [if S > 2]much [otherwise if S is 2]significantly [end if][if the diaper addiction of the player >= 14]less addicted to [one of]wearing[or]using[or]waddling around in[at random] diapers[otherwise if the diaper addiction of the player >= 7]less [one of]happy[or]calm[or]relaxed[at random] about the [one of]idea[or]reality[purely at random] of [one of]becoming diaper dependent[or]incontinence[or]wearing nappies under your clothes[in random order][otherwise]less tolerant about [one of]being treated like a baby[or]being forced to wear diapers[in random order][end if].".

To SilentlyDiaperAddictDown (X - a number):
	while X > 0:
		decrease X by 1;
		SilentlyDiaperAddictDown.

To SilentlyDiaperAddictDown:
	if the raw diaper addiction of the player > 1, decrease the raw diaper addiction of the player by 1.

Part - Adult Baby

Definition: yourself is actually an adult baby:
	if there is a worn baby themed headgear, decide yes;
	if the number of worn baby themed wearthing > 3, decide yes;
	decide no.


Diaper Addiction ends here.
