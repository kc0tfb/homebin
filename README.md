This repo contains various scripts and assorted cruft from ~/bin.  It's mainly for my own use but feel free to snoop around.

Noteworthy items:

ljlcd - Change "READY" message on the LCD display a networked HP LaserJet. Requires bash, netcat. Somewhere I have a version re-implemented using the sockets capability of GNU Awk, as well.

	ljlcd 10.0.1.2 "Insert Coin"

lesms - Send SMS via LES.NET from the command line (uses perl + WWW::Mechanize)

	Using standard input:	uname -a | lesms 16125551212
	Using command line:	lesms 16665551212 "I ate your homework. Woof."
