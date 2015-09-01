SRC = skim2md.applescript

OUTPUT = skim2md.scpt

INSTALL_DIR = $(HOME)/Library/Scripts/Applications/Skim

all: install

install: $(OUTPUT)

$(OUTPUT): $(SRC)
	osacompile -o $(INSTALL_DIR)/$(OUTPUT) $(SRC)
