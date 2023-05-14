AS=/usr/bin/env as

all: build_obj link_obj

build_obj:
	as --target=darwin-arm64 -o charcount.o charcount.s

link_obj:
	ld -macosx_version_min 13.0.0 -o charcount charcount.o -lSystem -syslibroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -e _start -arch arm64
