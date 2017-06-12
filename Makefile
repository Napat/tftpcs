
include make.rules

OUTPUT_DIR=${PWD}/output
INSTALL_PATH=~/tmp

BIN = tftpc tftpd

all: $(BIN) output

makedir: .FORCE
	mkdir -p $(OUTPUT_DIR)
	mkdir -p $(INSTALL_PATH)

tftpc: tftpc.c
	$(CC) $(CFLAGS) -o tftpc tftpc.c

tftpd: tftpd.c
	$(CC) $(CFLAGS) -o tftpd tftpd.c

clean: .FORCE
	rm -f tftpd tftpc

strip: .FORCE
	$(STRIP) tftpd tftpc

output: makedir	
	mv $(BIN) $(OUTPUT_DIR)

install: makedir
	cp $(OUTPUT_DIR)/tftpd $(INSTALL_PATH)/tftpd

.FORCE:

