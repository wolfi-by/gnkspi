$cmdList = @(
	('ray', 2),
	('ray "#0000FF" "#00FF00" "#FF0000"', 2),
	('ray "#0000FF" "#00FF00" "#FF0000" "#0000FF" "#00FF00" "#FF0000"', 2),
	('ray "#0000FF" "#00FF00" "#FF0000" "#0000FF" "#00FF00" "#FF0000" "#0000FF" "#00FF00" "#FF0000"', 2),
	('rayg', 2),
	('rayg "#0000FF" "#00FF00" "#FF0000"', 2),
	('rayg "#0000FF" "#00FF00" "#FF0000" "#0000FF" "#00FF00" "#FF0000"', 2),
	('rayg "#0000FF" "#00FF00" "#FF0000" "#0000FF" "#00FF00" "#FF0000" "#0000FF" "#00FF00" "#FF0000"', 2),
	('cir', 2),
	('cir "#0000FF" "#00FF00" "#FF0000"', 2),
	('cir "#0000FF" "#00FF00" "#FF0000" "#0000FF" "#00FF00" "#FF0000"', 2),
	('cir "#0000FF" "#00FF00" "#FF0000" "#0000FF" "#00FF00" "#FF0000" "#0000FF" "#00FF00" "#FF0000"', 2),
	('cirg', 2),
	('cirg "#0000FF" "#00FF00" "#FF0000"', 2),
	('cirg "#0000FF" "#00FF00" "#FF0000" "#0000FF" "#00FF00" "#FF0000"', 2),
	('cirg "#0000FF" "#00FF00" "#FF0000" "#0000FF" "#00FF00" "#FF0000" "#0000FF" "#00FF00" "#FF0000"', 2),
	('color 4 "#300000" 2 0x30 "#FF0100" 2 0x30 "#00FF01" 2 0x30 "#0100FF"', 15),
	('color 2 "#300000" 2 0x30 "#FF0100" 2 0x30 "#00FF01" 2 0x30 "#0100FF"', 15),
	('color 1 "#300000" 2 0x30 "#FF0100" 2 0x30 "#00FF01" 2 0x30 "#0100FF"', 15),
	('ring 2 "#000060" 1 4 "#0012F8" "00EE08"', 10),
	('ring 2 "#000060" 1 2 "#0012F8" "00EE08"', 10),
	('ring 2 "#000060" 1 1 "#0012F8" "00EE08"', 10),
	('ring 2 "#600000" 1 4 "#F81200" "08EE00"', 10),
	('ring 2 "#600000" 1 2 "#F81200" "08EE00"', 10),
	('ring 2 "#600000" 1 1 "#F81200" "08EE00"', 10),
	('stop', 0)
)

ForEach ($cmd In $cmdList) {
	& 'C:\Node.js (Chakra)\node.exe' test.js $cmd[0].split(" ")
	Start-Sleep $cmd[1]
}
