BUILD_DIR = build

all: build

build:
	mkdir -p $(BUILD_DIR)
	cd $(BUILD_DIR) && cmake .. && make

clean:
	rm -rf $(BUILD_DIR)

release:
	cd $(BUILD_DIR) && cmake -DCMAKE_BUILD_TYPE=Release .. && make

run: build
	cd $(BUILD_DIR) && clear && ./Clorador

test: build
	cd $(BUILD_DIR) && ctest

.PHONY: all build clean test