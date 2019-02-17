DEST ?= /usr/bin

all:
	@echo Run \'make install\' to install kunst on your device

install:
	@cp kunst $(DEST)/kunst
	@chmod 755 $(DEST)/kunst
	@echo Kunst has been installed on your device

uninstall:
	@rm -rf $(DEST)/kunst
	@echo Kunst has been removed from your device
