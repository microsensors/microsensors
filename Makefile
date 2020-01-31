PORT=/dev/ttyS14
#BINFILE=esp8266-20191220-v1.12.bin
BINFILE=uFirmware/esp32spiram-idf3-20191220-v1.12.bin
MAIN=main.py
BOOT=boot.py
BR=921600
TOOL=esptool.py
PY=ampy
INS=run.sh

install:
    pip3 install -r requeriments.txt

write_fl:
	esptool.py --chip esp32  --port ${PORT} --baud ${BR} write_flash -fm dio -z 0x1000  ${BINFILE}