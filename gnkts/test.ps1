$cmdList = @(
	('ray 1 "#0000FF" "#00FF00" "#FF0000"', 2),
	('ray 2 "#0000FF" "#00FF00" "#FF0000"', 2),
	('ray 3 "#0000FF" "#00FF00" "#FF0000"', 2),
	('ring 1 "#0000FF" "#00FF00" "#FF0000"', 2),
	('ring 2 "#0000FF" "#00FF00" "#FF0000"', 2),
	('ring 3 "#0000FF" "#00FF00" "#FF0000"', 2),
	('play pend1.json', 15),
	('play pend2.json', 20),
	('play pend3.json', 20),
	('play wave1.json', 20),
	('play wave2.json', 20),
	('play wave3.json', 60),
	('stop', 0)
)

ForEach ($cmd In $cmdList) {
	& 'C:\Node.js (Chakra)\node.exe' test.js $cmd[0].split(" ")
	Start-Sleep $cmd[1]
}
