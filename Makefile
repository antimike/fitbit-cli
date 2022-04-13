LOCAL := $(shell $$HOME/.local)
DESKTOP := $(LOCAL)/applications
BIN := $(LOCAL)/bin

.PHONY: bin desktop install

bin: *.zsh
	install -b $^ $(BIN)

desktop: *.desktop
	install -b $^ $(DESKTOP)

install: bin desktop
