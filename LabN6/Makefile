V1_SOURCE_NAME := LabN6V1
V1_LIBRARY_PATH := E:\files-from-machine-to-laptop\main-trash\University\KNRTU-KAI\5-term\assembly-programming\toolkit\masm32\lib\kernel32.lib
V1_ENTRY_NAME := Start


build_object_file:
	ml /c ${V1_SOURCE_NAME}.asm

build: build_object_file
	link /subsystem:windows ${V1_SOURCE_NAME}.obj ${V1_LIBRARY_PATH} -entry:${V1_ENTRY_NAME}

rebuild: clean build

clean:
	-del -fR ${V1_SOURCE_NAME}.obj
	-del -fR ${V1_SOURCE_NAME}.exe

debug: rebuild
	ollydbg ${V1_SOURCE_NAME}.exe