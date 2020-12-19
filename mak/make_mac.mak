# for Mac

TARGET=bin/auto_color_switcher
SRC=plugin/auto_color_switcher.swift

all: $(TARGET)

$(TARGET): $(SRC)
	swiftc -o $(TARGET) $(SRC)

clean:
	rm -f $(TARGET)
