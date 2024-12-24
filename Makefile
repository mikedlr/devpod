FLATPAK_BUILDER = flatpak-builder
BUILD_DIR = build-dir
MANIFEST = io.github.loft_sh.devpod.yml

.PHONY: all build clean

all: build

build:
	$(FLATPAK_BUILDER) --force-clean $(BUILD_DIR) $(MANIFEST)

clean:
	rm -rf $(BUILD_DIR)