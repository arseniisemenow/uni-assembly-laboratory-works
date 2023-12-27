LIBRARY_PATH := E:\files-from-machine-to-laptop\main-trash\University\KNRTU-KAI\5-term\assembly-programming\toolkit\masm32\lib\kernel32.lib

V1_ENTRY_NAME := Start
V1_SOURCE_NAME := LabN6V1

V4_SOURCE_NAME := LabN6V4d
V4_ENTRY_NAME := Start

v1_build_object_file:
	ml /c ${V1_SOURCE_NAME}.asm

v1_build: v1_build_object_file
	link /subsystem:windows ${V1_SOURCE_NAME}.obj ${LIBRARY_PATH} -entry:${V1_ENTRY_NAME}

v1_rebuild: clean v1_build

clean:
	-del -fR ${V1_SOURCE_NAME}.obj
	-del -fR ${V1_SOURCE_NAME}.exe
	-del -fR ${V4_SOURCE_NAME}.obj
	-del -fR ${V4_SOURCE_NAME}.exe

v1_debug: v1_rebuild
	ollydbg ${V1_SOURCE_NAME}.exe

v4_build_object_file:
	ml /c ${V4_SOURCE_NAME}.asm

v4_build: v4_build_object_file
	link /subsystem:windows ${V4_SOURCE_NAME}.obj ${LIBRARY_PATH} -entry:${V4_ENTRY_NAME}

v4_rebuild:clean v4_build

v4_debug:v4_rebuild
	ollydbg ${V4_SOURCE_NAME}.exe

