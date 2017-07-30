

erase:
	dfu-programmer atmega32u2 erase --force

flash:
	dfu-programmer atmega32u2 flash nanowriter.ino.mtdbu2.hex
