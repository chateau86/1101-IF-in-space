The story genre is "Science Fiction". The story headline is "A Space Journey". The story creation year is 2015. 

Chapter 0 - Meta declaration

Underlying relates various things to one thing. The verb to underlie means the underlying relation. The verb to be under means the underlying relation. The verb to be beneath means the underlying relation.
	Instead of looking under a thing which is underlaid by something (called the lost object):
	Say "You've discovered [the list of things which underlie the noun]!";
		now every thing which underlies the noun is carried by the player;
		now every thing which underlies the noun does not underlie the noun.

Chapter 1 - Story


When play begins:
say "[italic type]It is the year 2315, you are an astronaut who embarks on a journey a new planet, due to overpopulation and climate change destroying valuable resources on Earth. The planet is located in a different galaxy and accessible only through a wormhole. The planet, Xuria, has been found to be teeming with exotic plant life, quite habitable compared to Earth.


---------------------------------------------------------------------------------------------------------------




[bold type]You can’t believe you’ve finally made it. It seems like forever since you boarded the small rocket. Your journey from Earth to the planet Xuria has taken almost a year, even though you were traveling as close to light speed as is possible. You were chosen from random lottery to be sent to join the experimental colony on Xuria because Earth is falling apart due to climate change and dwindling resources. It is time to start your new life on this great new planet. However you should probably put on your gear first. There might be fire or sharp fragments of the ship outside after that rough landing.”


The Mid Deck is a room. "The interior of the rocketship is almost entirely white. There is a cramped cot built into the east side. On the west side of the room is a small cubicle that leads to the bathroom.  On the other side of the room is a ladder leads to the flight deck above and a lower deck below. A brochure of the rocket is pinned onto the wall.” East of the Mid Deck is Your Room. West of the Mid Deck is the Bathroom. Up from the Mid Deck is the Flight Deck. Down from the Mid Deck is the Lower Deck.
	Brochure is an object. Brochure is in the mid deck. Brochure is fixed in place. description of brochure is "[quotation mark]The all-new Gulfstream G9800 space plane offer the best performance in the small suboptic transport class. With the top speed of 0.98C, the highest in class, and unbeatable fuel economy from our twin wormhole energizer, You are guaranteed to arrive at your space colony faster than anyone while still spending less on fuel.[quotation mark]
All that performance was paid for with reduced structure, something you just discovered the hard way on the crash landing."
	Computer is an object. computer is in mid deck. [for testing]



The Lower Deck is a room. "There is a hatch on the side where you can leave the ship. The lower deck is large and filled with rooms you don't care about. There is a ladder where you climbed down from the mid deck." The Lower Deck is down from the Mid Deck.

Ship door is a door.  ship door is closed. ship door is locked. ship door is north of lower deck and south of parking lot.

The Flight Deck is a room. The Flight Deck is up from the Mid Deck.
	instead of going up from mid deck: say "Through the jammed door, you saw a large pool of blood and guts on the floor. You see no point in opening the cockpit door and seeing the gore in full detail.".


The Your Room is a room. "The majority of space in the room is taken up by the chest that you kept all your belongings in. Next to your makeshift 'bed' is a small nightstand." Your Room is east of the Mid Deck.
	Chest is in your room. Chest is an object. Chest is fixed in place. Chest is closed. Chest is openable. 
	Carry out opening chest: say "Inside the chest you see a neatly folded blue uniform that every new member to the colony wears amongst all of the other clothes you have been wearing on your journey."

		Uniform is an object. Uniform is in the chest. Uniform is wearable.
		description of uniform is "A neatly folded blue uniform that every new member to the colony wears amongst all of the other clothes you have been wearing on your journey.".
		Carry out wearing:
			say "You pull on the comfortable outfit and get ready to leave your rocket for good."
			
	Nightstand is in your room. Nightstand is object. Nightstand is fixed in place.
	Description of nightstand is “The nightstand is a small table with a single drawer. It has a small lamp which is providing light for the tiny room.”
	
		The nightstand support a lamp. the lamp is fixed in place. 
		Description of lamp is "$1million in R&D gave us this $5.99 IKEA lamp. Everything is more expensive in Aerospace, they said."
	
		The nightstand support a drawer. the drawer is closed. the drawer is openable. drawer is fixed in place.
		Carry out opening drawer: say “You open the drawer and see wrappers from the candy bars you smuggled onto the ship before you departed and inevitably ate within the first month, despite telling yourself you would save at least one for when you reached your destination. Under the wrappers you can see something made of plastic.”
	
		candy wrapper is in drawer.
		
		ID card is in the drawer. id card underlie the candy wrapper. it unlocks the ship door.

The Bathroom is a room. “You’ve already done everything you have to in here today.” The Bathroom is west of the Mid Deck.

The parking lot is a room. “You look around you and see a surprising amount of vegetation. Its amazing how similar Xuria’s atmosphere is to Earth’s. You are in a parking lot for space ships. The lot is empty except for an old spaceplane. The crash site is where the radio antenna array was. A shame that its now burnt to a crisp after the crash. To the North you can see some buildings that almost certainly make up the colony.”
	Spaceplane is a vehicle. spaceplane is in parking lot. description of spaceplane is “It is a Boeing type 929-200, a triple-warp-drive ancient relic from decades past. you used to pilot that thing for a sketchy galactic freight operator years before I took a job with the government. You just can’t kill that that thing, not even with years of neglect. They just don’t build ‘em like they used to. This one seems to be in a relatively good condition, compared to the ones on your last job, at least.”.
	instead of entering spaceplane:
		say "The door is partially disassembled. Even if you could get in, it’s not flyable like this. Maybe if you knew where the parts were and how to put it back together...".[TODO: Proper logic]

The Main Town is a room. Main town is north of parking lot.


The Town Hall is a room. Desk is an object. Desk is fixed in place. Computer is an object. Computer is fixed in place.


The Hospital is a room.


The Johnson's Office is a room.


The Johnson's Hall is a room.


The Johnson's Dining Area is a room.


The Johnson's Daughter's Bedroom is a room.


The Johnson's Study is a room.


The Johnson's Basement is a room.
 
Chapter 2 - Meta - Computer


chapter 2-1 - Actual computer


currUsr is a text variable.
currMch is a text variable.
currDirTxt is a text variable.
currDir is a list of text variable.


currUsr is "".
currMch is "TownHall-02".
currDir is usually {"home", "[currUsr]"}.
currDirTxt is usually "/home/[currUsr]".


After examining the Computer:
	now the command prompt is "Enter username :";
	reject the player's command.

After reading a command when the command prompt matches the text "Enter username :":
	now currUsr is player's command;
	if currUsr matches the text "john12":
		now the command prompt is "Password :";
		reject the player's command;
	else:
		say "Bad Username";
		now the command prompt is ">";
		reject the player's command.

After reading a command when the command prompt matches the text "Password :":
	if player's command matches "CoHoBaSt":
		now currDirTxt is "[currDir in brace notation]";
		replace the regular expression "\[quotation mark]\,\s\[quotation mark]" in currDirTxt with "/";
		replace the text "[quotation mark]}" in currDirTxt with "/";
		replace the text "{[quotation mark]" in currDirTxt with "/";
		now the command prompt is "[currUsr]@[currMch]:[currDirTxt]$>";
		reject the player's command;
	else:
		say "Bad password";
		now the command prompt is ">";
		reject the player's command.
		
After reading a command when the command prompt matches the regular expression ".*@.*:.*\$>" and the player's command matches the regular expression "exit| exit *":
        now the command prompt is ">";
        reject the player's command. 


After reading a command when the command prompt matches the regular expression ".*@.*:.*\$>":
	let strFullCmd be indexed text;
	let strFullCmd be player's command;
	let strCmd be word number 1 in strFullCmd;
	let strParam be indexed text;
	let strParam be player's command;
	replace word number 1 in strParam with "";
	replace character number 1 in strParam with "";
	[say "CMD: [strCmd] Param: [strParam][line break]";]
	if (strCmd matches the text "emacs"):
		say "vi master race.";
	else if (strCmd matches the text "vi"):
		say "emacs master race.";
	else if (strCmd matches the text "cd"):
		choose row with dir of currDirTxt in the table of fileindir;
		let subList be memberFolder entry;
		if (strParam matches the text ".."):
			remove entry (the number of entries of currDir)  from currDir;
		else if strParam is listed in subList:
			add strParam to currDir;
		else:
			say "Can't do that";
		now currDirTxt is "[currDir in brace notation]";
		replace the regular expression "\[quotation mark]\,\s\[quotation mark]" in currDirTxt with "/";
		replace the text "[quotation mark]}" in currDirTxt with "/";
		replace the text "{[quotation mark]" in currDirTxt with "/";
		now the command prompt is "[currUsr]@[currMch]:[currDirTxt]$>";
	else if (strCmd matches the text "ls") or  (strCmd matches the text "dir")  :
		say "At: [currDirTxt][line break]";
		choose row with dir of currDirTxt in the table of fileindir;
		say "Contain folder: [memberFolder entry][line break]";
		say "Contain file: [memberFile entry][line break]";
	else if (strCmd matches the text "cat"):
		let fileName be "[currDirTxt][strPAram]";
		[say "[filename]";]
		if filename is a url listed in Table of fileContent:
			say "-----[line break][fileContent corresponding to url of filename in table of FileContent][line break]-----";
		else:
			say "file not found";
	else:
		say "Command not recognized";
	reject the player's command.
	
chapter 2-2- Data


Table of fileInDir
dir			memberFolder		memberFile
"/"			{"home", "mnt"}		{}
"/mnt/"			{}		{}
"/home/"			{"guest"}		{}
"/home/john12/"			{"Download","Documents"}		{}
"/home/john12/Download/"			{"B979Manual"}		{}
"/home/john12/Download/B979Manual/"			{}		{"FCOM.txt","MxManual.txt"}
"/home/john12/Documents/"			{}		{"BlogDraft.txt"}


Table of fileContent
url		fileContent
"/home/john12/Download/B979Manual/FCOM.txt"		"A very long text that sounds more and more familar as it brings back your memories from your freight dog days..."
"/home/john12/Download/B979Manual/MxManual.txt"		"Door should be installed with the up arrow pointing up and the inside label facing inside. Use No. 12 spanner to tighten the hinge bolt. Put grease (P/N:1102) onto the hinge. Do not use mayonaise for this task. Horseradish is not allowed, either."
"/home/john12/Documents/BlogDraft.txt"		"... Just look at the death rate here. On the date ##, the number of death was suddenly zero. ... This may offer an important clue toward the cure for this bacteria. We may need to look into what happened on that day. ..."